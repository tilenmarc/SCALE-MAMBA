from Compiler.nn_utils import *




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

    def backward(self, lse):
        self.back_in_outs[self.num_layers] = lse
        for i in range(self.num_layers, 0, -1):
            self.back_in_outs[i - 1] = self.layers[i-1].backward(self.back_in_outs[i])
            # vector_print(self.back_in_outs[i-1])
            # print_ln('backs')

        # return self.in_outs[0]

class DenseLayer:
    def __init__(self, in_dim, out_dim):
        self.W = random_matrix(out_dim, in_dim, 1.0 / out_dim)
        self.in_vec = None
        self.out_vec = None
        self.nabla_W = None
        self.nabla_x = None
        self.var = True

    def forward(self, x):
        self.in_vec = x
        self.out_vec = matrix_mul_vec(self.W, x)

        return self.out_vec

    def backward(self, nabla_X_previous):
        self.nabla_W = matrix_mul(matrix_transpose(vec_to_matrix(nabla_X_previous)), vec_to_matrix(self.in_vec))
        # print_ln('compare before err %s %s %s', len(self.W), len(self.W[0]), len(nabla_X_previous))

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
        return self.out_vec

    def backward(self, nabla_X_previous):
        if self.type == "sigmoid":
            prime = vectorize_sfix(sigmoid_prime, self.in_vec)
            # print_ln('compare before err %s %s', len(prime), len(nabla_X_previous))
            #
            self.nabla_x = mul_vec(prime, nabla_X_previous)
            return self.nabla_x

class Optimizer:
    def __init__(self, nn, X, Y):
        self.nn = nn
        self.X = X
        self.Y = Y

    def lse(self):
        lse = MemValue(sfix(0))
        @for_range(len(self.X))
        def g(i):
            x = self.X[i]
            y = self.Y[i]
            out = self.nn.forward(x)
            dif = minus_vec(y, out)
            lse.write(lse.read() + norm_vec(dif))
        return lse.read()

    def run(self, iterations):
        W_mem = [[[MemValue(L.W[i][j]) for j in range(len(L.W[0]))] for i in range(len(L.W))] if L.var else [] for L in self.nn.layers]


        @for_range(iterations)
        def f(j):
            loss = self.lse()
            print_ln('loss %s', loss.reveal())


            # print_ln('w2')
            # matrix_print(self.W2)
            # print_ln('w1')
            # matrix_print(self.W1)

            G_mem = [[[MemValue(sfix(0)) for _ in range(len(L.W[0]))] for _ in range(len(L.W))] if L.var else [] for L in self.nn.layers]

            @for_range(len(self.X))
            def g(i):
                x = self.X[i]
                y = self.Y[i]

                # print_ln('W %s %s %s %s', self.W1[0][0].reveal(), self.W1[0][1].reveal(), self.W1[1][0].reveal(), self.W1[1][1].reveal())


                self.nn.forward(x)
                lse_prime = minus_vec(y, self.nn.in_outs[-1])
                self.nn.backward(lse_prime)

                for m in range(self.nn.num_layers):
                    if self.nn.layers[m].var:
                        for l in range(len(self.nn.layers[m].W[0])):
                            for k in range(len(self.nn.layers[m].W)):
                                # pass
                                G_mem[m][k][l].write(G_mem[m][k][l].read() + self.nn.layers[m].nabla_W[k][l])



            for m in range(self.nn.num_layers):
                if self.nn.layers[m].var:
                    for l in range(len(self.nn.layers[m].W[0])):
                        for k in range(len(self.nn.layers[m].W)):
                            W_mem[m][k][l].write(W_mem[m][k][l].read() +  G_mem[m][k][l].read() / len(self.X))
                            self.nn.layers[m].W[k][l] = W_mem[m][k][l].read()

















