import math
from Compiler import mpc_math
from Compiler.library import *


def vectorize_sfix(funct, x):
    n = len(x)
    ret = sfix.Array(n)
    @for_range(n)
    def f(i):
        ret[i] = funct(x[i])
        # print_ln('vectorize %s', ret[i].reveal())

    return ret

def random_vector(dim1, r):
    W = sfix.Array(dim1)
    @for_range(dim1)
    def f(i):
        W[i] = sfix.get_random(-r, r)
    return W

def random_matrix(dim1, dim2, r):
    W = sfix.Matrix(dim1, dim2)
    @for_range(dim1)
    def f(i):
        @for_range(dim2)
        def g(j):
            W[i][j] = sfix.get_random(-r, r)
            # print_ln('random %s %s', W[i][j].reveal(), r)

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

def slice_matrix(M, from_coord, to_coord, size):
    # if to_coord > len(M):
    #     to_coord = len(M)

    dim1 = size
    dim2 = len(M[0])

    W = sfix.Matrix(dim1, dim2)
    @for_range(dim1)
    def f(i):
        @for_range(dim2)
        def g(j):
            W[i][j] = M[from_coord + i][j]

    return W

def matrix_mul_vec(M, v):
    rows = len(M)
    cols = len(M[0])
    # print_ln('compare mat_mul_vec %s %s', cols, len(v))
    if cols != len(v):
        return error
    w = sfix.Array(rows)
    @for_range(rows)
    def f(i):
        w[i] = sfix(0)
        @for_range(cols)
        def h(k):
            w[i] = w[i] + (M[i][k] * v[k])

    return w

def log_e(x):
    return mpc_math.log_fx(x, math.e)

def exp(x):
    return mpc_math.pow_fx(math.e, x)

def sanitize(x, raw, lower, upper):
    exp_limit = 2 ** (x.k - x.f - 1)
    limit = math.log(exp_limit)
    res = (x > limit).if_else(upper, raw)
    return (x < -limit).if_else(lower, res)

def sigmoid(x):
    return sigmoid_from_e_x(x, exp(-x))


def sigmoid_from_e_x(x, e_x):
    return sanitize(x, sfix(1) / (1 + e_x), 0, 1)

def sigmoid_prime(x):
    sx = sigmoid(x)
    return sx * (1 - sx)

def approx_sigmoid(x, n=5):
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

def approx_sigmoid_prime(x, n=5):
    """ Piece-wise approximate sigmoid as in
    `Dahl et al. <https://arxiv.org/abs/1810.08130>`_

    :param x: input
    :param n: number of pieces, 3 (default) or 5
    """
    if n == 5:
        cuts = [-5, -2.5, 2.5, 5]
        le = [0] + [x <= cut for cut in cuts] + [1]
        select = [le[i + 1] - le[i] for i in range(5)]
        outputs = [cfix(0),
                   cfix(0.02776),
                   cfix(0.17),
                   cfix(0.02776),
                   cfix(0)]
        return sum(a * b for a, b in zip(select, outputs))
    else:
        a = x < -0.5
        b = x > 0.5
        return a.if_else(0, b.if_else(1, 0.5 + x))

def relu(x):
    """ ReLU function (maximum of input and zero). """
    return (0 < x).if_else(x, sfix(0))

def relu_prime(x):
    """ ReLU derivative. """

    return (0 <= x).if_else(sfix(1), sfix(0))

def mul_vec(x, y):
    n = len(x)
    # print_ln('compare mul_vec %s %s', n, len(y))
    if n != len(y):
        return error
    ret = sfix.Array(n)
    @for_range(n)
    def f(i):
        ret[i] = x[i] * y[i]
    return ret

def matrix_mul_elementwise(M1, M2):
    rows = len(M1)
    cols = len(M1[0])
    if len(M2[0]) != len(M1[0]) or len(M2) != len(M1):
        return error
    W = sfix.Matrix(rows, cols)
    @for_range(rows)
    def f(i):
        @for_range(cols)
        def g(j):
            W[i][j] = M1[i][j] * M2[i][j]

    return W

def matrix_add(M1, M2):
    rows = len(M1)
    cols = len(M1[0])
    if len(M2[0]) != len(M1[0]) or len(M2) != len(M1):
        return error
    W = sfix.Matrix(rows, cols)
    @for_range(rows)
    def f(i):
        @for_range(cols)
        def g(j):
            W[i][j] = M1[i][j] + M2[i][j]

    return W

def matrix_div(M1, M2, epsilon = 0):
    rows = len(M1)
    cols = len(M1[0])
    if len(M2[0]) != len(M1[0]) or len(M2) != len(M1):
        return error
    W = sfix.Matrix(rows, cols)
    @for_range(rows)
    def f(i):
        @for_range(cols)
        def g(j):
            W[i][j] = M1[i][j] / (M2[i][j] + epsilon)

    return W

def matrix_mul_scalar(M1, s):
    rows = len(M1)
    cols = len(M1[0])
    W = sfix.Matrix(rows, cols)
    @for_range(rows)
    def f(i):
        @for_range(cols)
        def g(j):
            W[i][j] = M1[i][j] * s

    return W

def matrix_sqrt(M1):
    rows = len(M1)
    cols = len(M1[0])
    W = sfix.Matrix(rows, cols)
    @for_range(rows)
    def f(i):
        @for_range(cols)
        def g(j):
            W[i][j] = mpc_math.sqrt(M1[i][j])
    return W

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

def matrix_mul(M1, M2):
    rows = len(M1)
    cols = len(M2[0])
    mid = len(M2)
    if len(M1[0]) != mid:
        return error
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

def vec_to_matrix(v):
    rows = 1
    cols = len(v)
    W = sfix.Matrix(rows, cols)
    @for_range(cols)
    def f(i):
        W[0][i] = v[i]
    return W

def minus_vec(x, y):
    n = len(x)
    if len(y) != n:
        return error
    ret = sfix.Array(n)
    @for_range(n)
    def f(i):
        ret[i] = x[i] - y[i]
    return ret

def vector_add(x, y):
    n = len(x)
    if len(y) != n:
        return error
    ret = sfix.Array(n)
    @for_range(n)
    def f(i):
        ret[i] = x[i] + y[i]
    return ret

def norm_vec(v):
    norm = MemValue(sfix(0))
    @for_range(len(v))
    def g(i):
        norm.write(norm.read() + v[i] * v[i])
    return norm.read()

def vec_mul_scalar(v,s):
    return vectorize_sfix(lambda x: x*s, v)

def vector_print(v):
    rows = len(v)
    print_ln('vector')
    @for_range(rows)
    def f(i):
        print_ln('%s', v[i].reveal())


