from Compiler.nn_utils import *
import math



class NeuralNetwork:
    def __init__(self, layers):
        self.num_layers = len(layers)
        self.layers = layers
        self.input = None
        self.in_outs = [None for _ in range(self.num_layers + 1)]
        self.back_in_outs = [None for _ in range(self.num_layers + 1)]

    def forward(self, x):
        # vector_print(x)
        self.in_outs[0] = x

        for i in range(self.num_layers):
            self.in_outs[i + 1] = self.layers[i].forward(self.in_outs[i])
            # vector_print(self.in_outs[i + i])
            # print_ln('outs')

        return self.in_outs[-1]

    # assumes forward was called before
    def backward(self, lse):
        self.back_in_outs[self.num_layers] = lse
        for i in range(self.num_layers, 0, -1):
            self.back_in_outs[i - 1] = self.layers[i-1].backward(self.back_in_outs[i])

class DenseLayer:
    def __init__(self, in_dim, out_dim):
        self.W = random_matrix(out_dim, in_dim, 1.0 / in_dim)
        self.b = random_vector(out_dim, 0.1)
        # self.W = eye_matrix(out_dim, in_dim)
        self.in_vec = None
        self.out_vec = None
        self.nabla_W = None
        self.nabla_x = None
        self.var = True

    def forward(self, x):
        self.in_vec = x
        tmp = matrix_mul_vec(self.W, x)
        self.out_vec = vector_add(tmp, self.b)

        return self.out_vec

    def backward(self, nabla_X_previous):
        self.nabla_W = matrix_mul(matrix_transpose(vec_to_matrix(nabla_X_previous)), vec_to_matrix(self.in_vec))
        # print_ln('compare before err %s %s %s', len(self.W), len(self.W[0]), len(nabla_X_previous))
        # print_ln('backward %s %s %s', self.nabla_W[0][0].reveal(), self.nabla_W[0][1].reveal(), self.nabla_W[0][2].reveal())
        self.nabla_b = nabla_X_previous

        self.nabla_x = matrix_mul_vec(matrix_transpose(self.W), nabla_X_previous)
        #
        return self.nabla_x



class ActivationLayer:
    def __init__(self, type):
        self.type = type
        self.nabla_x = None
        self.in_vec = None
        self.out_vec = None
        self.var = False

    def forward(self, x):
        self.in_vec = x
        if self.type == "sigmoid":
            self.out_vec = vectorize_sfix(sigmoid, self.in_vec)
        if self.type == "approx_sigmoid":
            self.out_vec = vectorize_sfix(approx_sigmoid, self.in_vec)
        if self.type == "relu":
            self.out_vec = vectorize_sfix(relu, self.in_vec)

        return self.out_vec

    def backward(self, nabla_X_previous):
        if self.type == "sigmoid":
            prime = vectorize_sfix(sigmoid_prime, self.in_vec)
        if self.type == "approx_sigmoid":
            prime = vectorize_sfix(approx_sigmoid_prime, self.in_vec)
        if self.type == "relu":
            prime = vectorize_sfix(relu_prime, self.in_vec)

        self.nabla_x = mul_vec(prime, nabla_X_previous)

        return self.nabla_x

class Optimizer:
    def __init__(self, nn, X, Y):
        self.nn = nn
        self.X = X
        self.Y = Y
        # self.m = 0
        # self.v = 0
        self.alpha = .001
        self.beta1 = 0.9
        self.beta2 = 0.999
        # self.beta1_pow = 0.9
        # self.beta2_pow = 0.999
        self.epsilon = 10 ** -8

    def mse(self, X, Y):
        lse = MemValue(sfix(0))
        @for_range(len(X))
        def g(i):
            x = X[i]
            y = Y[i]
            out = self.nn.forward(x)
            # print_ln('result %s', out[0].reveal())
            dif = minus_vec(y, out)
            lse.write(lse.read() + norm_vec(dif))
        return lse.read()

    def mse_prime(self, x, y):
        out = self.nn.forward(x)
        prime = minus_vec(out, y)
        prime = vec_mul_scalar(prime, 2)
        # @for_range(len(y))
        # def ff(k):
        #     print_ln('mse prime %s', prime[k].reveal())
        return prime

    def cross_entropy(self, X, Y):
        lse = MemValue(sfix(0))
        @for_range(len(X))
        def g(i):
            x = X[i]
            y = Y[i]
            out1 = self.nn.forward(x)
            # print_ln('result %s', out1[0].reveal())
            @for_range(len(y))
            def ff(k):
                error = -(y[k] * ln_approx(out1[k]) + (1-y[k]) * ln_approx(1-out1[k]))
                # # error = y[k] * ((1 / out[k] * out[k] + 0.1) - 1)  + (1-y[k]) * (1 / ((1 - out[k]) * (1 - out[k] + 0.1) - 1))
                # print_ln('err %s %s %s', error.reveal(), (out1[k]).reveal(), ln_approx(out1[k]).reveal())
                # print_ln('part cross %s', lse.read().reveal())
                lse.write(lse.read() + error)
        return lse.read()

    def cross_entropy_prime(self, x, y):
        prime = sfix.Array(len(y))
        out = self.nn.forward(x)
        @for_range(len(y))
        def ff(k):
            prime[k] = -(y[k] / (out[k] + self.epsilon) + (y[k]-1) / ((1-out[k]) + self.epsilon))
            # print_ln('cross prime %s', prime[k].reveal())
        return prime

    def run(self, epochs, batch_size, learning_rate, alg="grad"):
        num_batches = ((len(self.X) - 1) / batch_size) + 1
        # print_ln('num batches %s, %s', num_batches, len(self.X))

        G = [sfix.Matrix(len(L.W), len(L.W[0])) if L.var else [] for L in self.nn.layers]
        Gb = [sfix.Array(len(L.b)) if L.var else [] for L in self.nn.layers]

        if alg=="adam":
            self.beta1_pows = Array(epochs, sfix)
            self.beta2_pows = Array(epochs, sfix)
            for i in range(epochs * num_batches):
                self.beta1_pows[i] = 1. / (1 - self.beta1 ** (i + 1))
                self.beta2_pows[i] = 1. / (1 - self.beta2 ** (i + 1))
            self.m = [sfix.Matrix(len(L.W), len(L.W[0])) if L.var else [] for L in self.nn.layers]
            self.v = [sfix.Matrix(len(L.W), len(L.W[0])) if L.var else [] for L in self.nn.layers]
            for m in range(len(self.nn.layers)):
                L = self.nn.layers[m]
                if not L.var:
                    continue
                @for_range(len(L.W))
                def _(k):
                    @for_range(len(L.W[0]))
                    def _(l):
                        self.m[m][k][l] = sfix(0)
                        self.v[m][k][l] = sfix(0)


        @for_range(epochs)
        def one_epoch(ep):
            print_ln('epoch %s', ep)

            @for_range(num_batches)
            def one_batch(j):
                batch_X = slice_matrix(self.X, j * batch_size, (j + 1) * batch_size, batch_size)
                batch_Y = slice_matrix(self.Y, j * batch_size, (j + 1) * batch_size, batch_size)

                loss = self.mse(batch_X, batch_Y)
                print_ln('loss %s', loss.reveal())

                # cross_entropy = self.cross_entropy(batch_X, batch_Y)
                # print_ln('cross entropy %s', cross_entropy.reveal())

                for m in range(len(self.nn.layers)):
                    L = self.nn.layers[m]
                    if not L.var:
                        continue
                    @for_range(len(L.W))
                    def ff(k):
                        @for_range(len(L.W[0]))
                        def ff(l):
                            G[m][k][l] = sfix(0)

                @for_range(batch_size)
                def g(i):
                    x = batch_X[i]
                    y = batch_Y[i]

                    prime = self.mse_prime(x, y)
                    # prime = self.cross_entropy_prime(x, y)

                    self.nn.backward(prime)

                    for m in range(len(self.nn.layers)):
                        L = self.nn.layers[m]
                        if not L.var:
                            continue
                        @for_range(len(L.W))
                        def ff(k):
                            Gb[m][k] = Gb[m][k] + self.nn.layers[m].nabla_b[k]
                            # print_ln('derivative %s', Gb[m][k].reveal())

                            @for_range(len(L.W[0]))
                            def ff(l):
                                G[m][k][l] = G[m][k][l] + self.nn.layers[m].nabla_W[k][l]


                                # print_ln('derivative %s', G[m][k][l].reveal())

                for m in range(len(self.nn.layers)):
                    L = self.nn.layers[m]
                    if not L.var:
                        continue
                    # if alg=="grad":
                    #     self.nn.layers[m].W = matrix_add(self.nn.layers[m].W, matrix_mul_scalar(G[m], -learning_rate))
                    #
                    # if alg=="adam":
                    #     self.m[m] = matrix_add(matrix_mul_scalar(self.m[m], self.beta1), matrix_mul_scalar(G[m], 1 - self.beta1))
                    #     self.v[m] = matrix_add(matrix_mul_scalar(self.v[m], self.beta2), matrix_mul_scalar(matrix_mul_elementwise(G[m], G[m]), 1 - self.beta1))
                    #     m_hat = matrix_mul_scalar(self.m[m], 1.0 / (1 - self.beta1_pow))
                    #     v_hat = matrix_mul_scalar(self.v[m], 1.0 / (1 - self.beta2_pow))
                    #     tmp = matrix_div(m_hat, matrix_sqrt(v_hat), self.epsilon)
                    #     self.nn.layers[m].W = matrix_add(self.nn.layers[m].W, matrix_mul_scalar(tmp, -learning_rate))
                    #


                    @for_range(len(L.W))
                    def ff(k):
                        if alg=="grad":
                            self.nn.layers[m].b[k] = self.nn.layers[m].b[k] - learning_rate*Gb[m][k]

                        @for_range(len(L.W[0]))
                        def ff(l):
                            if alg=="grad":
                                self.nn.layers[m].W[k][l] = self.nn.layers[m].W[k][l] - learning_rate*G[m][k][l]
                            if alg=="adam":
                                # print_ln('m before %s %s', self.m[m][k][l].reveal(), (1 - self.beta1))

                                self.m[m][k][l] = (self.m[m][k][l] * self.beta1) + (G[m][k][l] * (1 - self.beta1))
                                self.v[m][k][l] = (self.v[m][k][l] * self.beta2) + (G[m][k][l] * G[m][k][l] * (1 - self.beta2))
                                m_hat = self.m[m][k][l] * self.beta1_pows[ep*num_batches + j]
                                v_hat = self.v[m][k][l] * self.beta2_pows[ep*num_batches + j]
                                # print_ln('m, v %s %s %s %s %s %s', self.m[m][k][l].reveal(), self.v[m][k][l].reveal(), m_hat.reveal(), v_hat.reveal(), G[m][k][l].reveal(), self.beta1_pows[ep].reveal())
                                # print_ln('update %s', (m_hat / (mpc_math.sqrt(v_hat) + self.epsilon)).reveal())

                                self.nn.layers[m].W[k][l] = self.nn.layers[m].W[k][l] - (learning_rate * m_hat / (mpc_math.sqrt(v_hat) + self.epsilon))
                #
                # self.beta1_pow = self.beta1_pow * self.beta1
                # self.beta2_pow = self.beta2_pow * self.beta2












