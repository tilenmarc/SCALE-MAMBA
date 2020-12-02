
import math

from Compiler import mpc_math
# from Compiler import util
from Compiler.types import *
# from Compiler.types import _unreduced_squant
from Compiler.library import *
from Compiler.util import is_zero, tree_reduce
# from Compiler.comparison import CarryOutRawLE
# from Compiler.GC.types import sbitint
# from functools import reduce
#

def random_matrix(dim1, dim2, r):
    W = sfix.Matrix(dim1, dim2)
    @for_range(dim1)
    def f(i):
        @for_range(dim2)
        def g(j):
            W[i][j] = sfix.get_random(-r, r)

    return W

def eye_matrix(dim1, dim2):
    W = sfix.Matrix(dim1, dim2)
    @for_range(dim1)
    def f(i):
        @for_range(dim2)
        def g(j):
            if_then(i == j)
            W[i][j] = sfix(1)
            else_then()
            W[i][j] = sfix(0)
            end_if()

    return W

def matrix_mul(M1, M2):
    rows = len(M1)
    cols = len(M2[0])
    mid = len(M2)
    # print_ln('"row, cols %s %s', rows, cols)
    W = sfix.Matrix(rows, cols)
    @for_range(rows)
    def f(i):
        @for_range(cols)
        def g(j):
            W[i][j] = sfix(0)
            @for_range(mid)
            def h(k):
                W[i][j] = W[i][j] + (M1[i][k] * M2[k][j])

    return W

def scalar_mul_matrix(s, M):
    rows = len(M)
    cols = len(M[0])
    W = sfix.Matrix(rows, cols)
    @for_range(rows)
    def f(i):
        @for_range(cols)
        def g(j):
            W[i][j] = s * M[i][j]
    return W

def matrix_add(M1, M2):
    rows = len(M1)
    cols = len(M1[0])
    W = sfix.Matrix(rows, cols)
    @for_range(rows)
    def f(i):
        @for_range(cols)
        def g(j):
            W[i][j] = M1[i][j] + M2[i][j]
    return W

def matrix_mul_vec(M, v):
    rows = len(M)
    cols = len(M[0])
    w = sfix.Array(rows)
    @for_range(rows)
    def f(i):
        w[i] = sfix(0)
        @for_range(cols)
        def h(k):
            w[i] = w[i] + (M[i][k] * v[k])

    return w

def matrix_transpose(M):
    rows = len(M)
    cols = len(M[0])
    W = sfix.Matrix(cols, rows)
    @for_range(cols)
    def f(i):
        @for_range(rows)
        def g(j):
            W[i][j] = M[j][i]
    return W

def matrix_print(M):
    rows = len(M)
    cols = len(M[0])
    print_ln('matrix')
    @for_range(rows)
    def f(i):
        @for_range(cols)
        def g(j):
            print_ln('%s', M[i][j].reveal())

def vector_print(v):
    rows = len(v)
    print_ln('vector')
    @for_range(rows)
    def f(i):
        print_ln('%s', v[i].reveal())

def vec_to_matrix(v):
    rows = 1
    cols = len(v)
    W = sfix.Matrix(rows, cols)
    @for_range(cols)
    def f(i):
        W[0][i] = v[i]
    return W

def norm_vec(v):
    norm = MemValue(sfix(0))
    @for_range(len(v))
    def g(i):
        norm.write(norm.read() + v[i] * v[i])
    return norm.read()

def vectorize_sfix(funct, x):
    n = len(x)
    ret = sfix.Array(n)
    @for_range(n)
    def f(i):
        ret[i] = funct(x[i])
        # print_ln('vectorize %s', ret[i].reveal())

    return ret

class NeuralNetwork:
    def __init__(self, in_dim, hid_dim, out_dim):
        # np.random.seed(10) # for generating the same results
        self.W1 = random_matrix(hid_dim, in_dim, 1.0 / hid_dim)
        # self.W1 = eye_matrix(hid_dim, in_dim)
        self.W2 = random_matrix(out_dim, hid_dim, 1.0 / hid_dim)
        # self.W2 = eye_matrix(out_dim, hid_dim)
        self.x = None
        self.W1x = None
        self.x_1 = None
        self.W2x_1 = None
        self.x_2 = None

    def forward(self, x):
        # vector_print(x)
        self.x = x
        self.W1x = matrix_mul_vec(self.W1, x)
        # self.x_1 = vectorize_sfix(relu, self.W1x)
        self.x_1 = vectorize_sfix(sigmoid, self.W1x)
        self.W2x_1 = matrix_mul_vec(self.W2, self.x_1)
        # self.x_2 = vectorize_sfix(approx_sigmoid, self.W2x_1)
        self.x_2 = vectorize_sfix(sigmoid, self.W2x_1)
        # vector_print(self.x_2)
        return self.x_2


    def lse(self, X, Y):
        lse = MemValue(sfix(0))
        @for_range(len(X))
        def g(i):
            x = X[i]
            y = Y[i]
            self.forward(x)
            dif = minus_vec(y, self.x_2)
            lse.write(lse.read() + norm_vec(dif))
        return lse.read()

    def gradient_descent(self, X, Y, iterations):
        W1 = [[MemValue(self.W1[i][j]) for j in range(len(self.W1[0]))] for i in range(len(self.W1))]
        W2 = [[MemValue(self.W2[i][j]) for j in range(len(self.W2[0]))] for i in range(len(self.W2))]


        @for_range(iterations)
        def f(j):
            loss = self.lse(X, Y)
            print_ln('loss %s', loss.reveal())


            # print_ln('w2')
            # matrix_print(self.W2)
            # print_ln('w1')
            # matrix_print(self.W1)



            G1 = [[MemValue(sfix(0)) for j in range(len(self.W1[0]))] for i in range(len(self.W1))]
            G2 = [[MemValue(sfix(0)) for j in range(len(self.W2[0]))] for i in range(len(self.W2))]

            @for_range(len(X))
            def g(i):
                x = X[i]
                y = Y[i]

                # print_ln('W %s %s %s %s', self.W1[0][0].reveal(), self.W1[0][1].reveal(), self.W1[1][0].reveal(), self.W1[1][1].reveal())


                self.forward(x)
                # gradients for hidden to output weights
                # mu2 = mul_vec(minus_vec(y, self.x_2), vectorize_sfix(approx_sigmoid_prime, self.W2x_1))
                mu2 = mul_vec(minus_vec(y, self.x_2), vectorize_sfix(sigmoid_prime, self.W2x_1))
                g2 = matrix_mul(matrix_transpose(vec_to_matrix(mu2)), vec_to_matrix(self.x_1))

                # print_ln('w1x %s %s', self.W1x[0].reveal(), self.W1x[1].reveal())


                # mu1a = vectorize_sfix(relu_prime, self.W1x)
                mu1a = vectorize_sfix(sigmoid_prime, self.W1x)
                # print_ln('mu1a %s %s', mu1a[0].reveal(), mu1a[1].reveal())
                mu1b = matrix_mul_vec(matrix_transpose(self.W2), mu2)
                # print_ln('mu1b %s %s', mu1b[0].reveal(), mu1b[1].reveal())
                mu1 = mul_vec(mu1a, mu1b)
                # print_ln('mu %s %s', mu1[0].reveal(), mu1[1].reveal())


                g1 = matrix_mul(matrix_transpose(vec_to_matrix(mu1)), vec_to_matrix(self.x))
                # print_ln('g2')
                # matrix_print(g2)
                # print_ln('g1')
                # matrix_print(g1)

                # print_ln('g2 %s %s %s %s', g2[0][0].reveal(), g2[0][1].reveal(), g2[1][0].reveal(), g2[1][1].reveal())
                # print_ln('g1 %s %s %s %s', g1[0][0].reveal(), g1[0][1].reveal(), g1[1][0].reveal(), g1[1][1].reveal())



                for l in range(len(self.W1[0])):
                    for k in range(len(self.W1)):
                        G1[k][l].write(G1[k][l].read() + g1[k][l])

                for l in range(len(self.W2[0])):
                    for k in range(len(self.W2)):
                        G2[k][l].write(G2[k][l].read() + g2[k][l])

            for l in range(len(self.W1[0])):
                for k in range(len(self.W1)):
                    W1[k][l].write(W1[k][l].read() + G1[k][l].read() / len(X))
                    self.W1[k][l] = W1[k][l].read()

            for l in range(len(self.W2[0])):
                for k in range(len(self.W2)):
                    W2[k][l].write(W2[k][l].read() + G2[k][l].read() / len(X))
                    self.W2[k][l] = W2[k][l].read()

def log_e(x):
    return mpc_math.log_fx(x, math.e)

def exp(x):
    return mpc_math.pow_fx(math.e, x)

def sanitize(x, raw, lower, upper):
    exp_limit = 2 ** (x.k - x.f - 1)
    limit = math.log(exp_limit)
    res = (x > limit).if_else(upper, raw)
    return (x < -limit).if_else(lower, res)

def sigmoid_vec(x):
    n = len(x)
    ret = sfix.Array(n)
    @for_range(n)
    def f(i):
        ret[i] = sigmoid(x[i])
    return ret

def dot_vec(x, y):
    return sum(mul_vec(x, y))

def minus_vec(x, y):
    n = len(x)
    ret = sfix.Array(n)
    @for_range(n)
    def f(i):
        ret[i] = x[i] - y[i]
    return ret

def mul_vec(x, y):
    n = len(x)
    ret = sfix.Array(n)
    @for_range(n)
    def f(i):
        ret[i] = x[i] * y[i]
    return ret

def sigmoid(x):
    """ Sigmoid function.

    :param x: sfix """
    return sigmoid_from_e_x(x, exp(-x))


def sigmoid_from_e_x(x, e_x):
    return sanitize(x, sfix(1) / (1 + e_x), 0, 1)

def sigmoid_prime(x):
    """ Sigmoid derivative.

    :param x: sfix """
    sx = sigmoid(x)
    return sx * (1 - sx)

def sigmoid_prime_vec(x):
    n = len(x)
    ret = sfix.Array(n)
    @for_range(n)
    def f(i):
        ret[i] = sigmoid_prime(x[i])
    return ret

def approx_sigmoid_prime(x, n=5):
    sx = approx_sigmoid(x, n)
    return sx * (1 - sx)

def approx_sigmoid(x, n=5):
    """ Piece-wise approximate sigmoid as in
    `Dahl et al. <https://arxiv.org/abs/1810.08130>`_

    :param x: input
    :param n: number of pieces, 3 (default) or 5
    """
    if n == 5:
        cuts = [-5, -2.5, 2.5, 5]
        le = [0] + [x <= cut for cut in cuts] + [1]
        select = [le[i + 1] - le[i] for i in range(5)]
        outputs = [cfix(10 ** -4),
                   0.02776 * x + 0.145,
                   0.17 * x + 0.5,
                   0.02776 * x + 0.85498,
                   cfix(1 - 10 ** -4)]
        return sum(a * b for a, b in zip(select, outputs))
    else:
        a = x < -0.5
        b = x > 0.5
        return a.if_else(0, b.if_else(1, 0.5 + x))

def lse_0_from_e_x(x, e_x):
    return sanitize(-x, log_e(1 + e_x), x + 2 ** -x.f, 0)

def lse_0(x):
    return lse_0_from_e_x(x, exp(x))

def approx_lse_0(x, n=3):
    assert n != 5
    a = x < -0.5
    b = x > 0.5
    return a.if_else(0, b.if_else(x, 0.5 * (x + 0.5) ** 2)) - x

def relu_prime(x):
    """ ReLU derivative. """

    return (0 <= x).if_else(sfix(1), sfix(0))

def relu(x):
    """ ReLU function (maximum of input and zero). """
    return (0 < x).if_else(x, 0)

def argmax(x):
    """ Compute index of maximum element.

    :param x: iterable
    :returns: sint
    """
    def op(a, b):
        comp = (a[1] > b[1])
        return comp.if_else(a[0], b[0]), comp.if_else(a[1], b[1])
    return tree_reduce(op, enumerate(x))[0]
