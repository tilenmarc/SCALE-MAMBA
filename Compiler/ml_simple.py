
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

def matrix_mul(M1, M2):
    rows = len(M1)
    cols = len(M2[0])
    mid = len(M2)
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

def vec_to_matrix(v):
    rows = 1
    cols = len(v)
    W = sfix.Matrix(cols, rows)
    @for_range(cols)
    def f(i):
        W[0][i] = v[i]
    return W

# def vectorizesfix(funct):


class NeuralNetwork:
    def __init__(self, in_dim, hid_dim, out_dim):
        # np.random.seed(10) # for generating the same results
        self.W1 = random_matrix(hid_dim, in_dim, 10)
        self.W2 = random_matrix(out_dim, hid_dim, 10)
        self.x = None
        self.W1x = None
        self.x_1 = None
        self.W2x_1 = None
        self.x_2 = None

    def forward(self, x):
        self.x = x
        self.W1x = matrix_mul_vec(self.W1, x)
        self.x_1 = sigmoid_vec(self.W1x)
        self.W2x_1 = matrix_mul_vec(self.W2, self.x_1)
        self.x_2 = sigmoid_vec(self.W2x_1)

        return self.x_2


    def gradient_descent(self, x, y, iterations):
        @for_range(iterations)
        def f(i):
            self.forward(x)
            # gradients for hidden to output weights
            mu2 = mul_vec(minus_vec(y, self.x_2), sigmoid_prime_vec(self.W2x_1))
            g2 = matrix_mul(matrix_transpose(vec_to_matrix(mu2)), vec_to_matrix(self.x_1))

            mu1a = sigmoid_prime_vec(self.W1x)
            mu1b = matrix_mul_vec(matrix_transpose(self.W2), mu2)
            mu1 = mul_vec(mu1a, mu1b)

            g1 = matrix_mul(matrix_transpose(vec_to_matrix(mu1)), vec_to_matrix(self.x))

            self.W2 = matrix_add(self.W2, g2)
            self.W1 = matrix_add(self.W1, g1)


#     def gradient_descent(self, x, y, iterations):
#         for i in range(iterations):
#             Xi = x
#             Xj = self.sigmoid(Xi, self.wij)
#             yhat = self.sigmoid(Xj, self.wjk)
#             # gradients for hidden to output weights
#             g_wjk = np.dot(Xj.T, (y - yhat) * self.sigmoid_derivative(Xj, self.wjk))
#             # gradients for input to hidden weights
#             g_wij = np.dot(Xi.T, np.dot((y - yhat) * self.sigmoid_derivative(Xj, self.wjk), self.wjk.T) * self.sigmoid_derivative(Xi, self.wij))
#             # update weights
#             self.wij += g_wij
#             self.wjk += g_wjk
#         print('The final prediction from neural network are: ')
#         print(yhat)
#
# if __name__ == '__main__':
# neural_network = NeuralNetwork()
# print('Random starting input to hidden weights: ')
# print(neural_network.wij)
# print('Random starting hidden to output weights: ')
# print(neural_network.wjk)
# X = np.array([[0, 0, 1], [1, 1, 1], [1, 0, 1], [0, 1, 1]])
# y = np.array([[0, 1, 1, 0]]).T
# neural_network.gradient_descent(X, y, 10000)





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


def approx_sigmoid(x, n=3):
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
    return (0 <= x)

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
