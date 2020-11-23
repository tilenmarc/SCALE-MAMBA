from Compiler.library import *

def load_sint():
    v = sint()
    input_shares(0, v)

    return v

def load_sint_old():
    v0 = sint.get_private_input_from(0, 0)
    v1 = sint.get_private_input_from(1, 1)
    v2 = sint.get_private_input_from(2, 2)

    v = (v0 + v1 + v2) % 2**32

    return v

def load_sint_array(l):
    # a1 = Array(LEN, sint)
    # a2 = Array(LEN, sint)
    # a3 = Array(LEN, sint)
    a = Array(l, sint)
    @for_range(l)
    def f(i):
        # a1[i] = sint.get_private_input_from(0, 0)
        # a2[i] = sint.get_private_input_from(1, 1)
        # a3[i] = sint.get_private_input_from(2, 2)
        # a[i] = a1[i] + a2[i]
        # a[i] = a[i] + a3[i]
        # a[i] = a[i] % 2**32
        a[i] = load_sint()

    return a
# todo negative
def load_fix():
    v = load_sint()

    v = v - ((v >> 40) * 2**41)

    fx = sfix(0)
    fx.v = v

    return fx

def load_fix_old():
    v0 = sint.get_private_input_from(0, 0)
    v1 = sint.get_private_input_from(1, 1)
    v2 = sint.get_private_input_from(2, 2)

    v = ((v0 + v1 + v2) % 2**41)
    v = v - ((v >> 40) * 2**41)
    fx = sfix(0)
    fx.v = v

    return fx

def load_sfix_array(l):
    a = sfix.Array(l)
    @for_range(l)
    def f(i):
        a[i] = load_fix()
    return a

def load_X_Y(dim_x, dim_y, len_all):
    a = load_sfix_array(len_all)
    X = sfix.Matrix(dim_x[0], dim_x[1])
    Y = sfix.Matrix(dim_y[0], dim_y[1])

    @for_range(len_all / (dim_x[1] + dim_y[1]))
    def f(i):
        @for_range(dim_x[1] + dim_y[1])
        def g(j):
            if_then(j < dim_x[1])
            X[i][j] = a[i * (dim_x[1] + dim_y[1]) + j]
            else_then()
            Y[i][j - dim_x[1]] = a[i * (dim_x[1] + dim_y[1]) + j]
            end_if()

    return X, Y

def load_sfix_matrix(dim_x, dim_y):
    a = load_sfix_array(dim_x*dim_y)
    X = sfix.Matrix(dim_x, dim_y)

    @for_range(dim_x)
    def f(i):
        @for_range(dim_y)
        def g(j):
            X[i][j] = a[i * dim_y + j]

    return X

def output_sint(res):
    output_shares(0, res)

def output_sfix(res):
    output_shares(0, res.v)

def output_sint_array(res):
    @for_range(len(res))
    def _(j):
        output_shares(0, res[j])

def output_sfix_array(res):
    @for_range(len(res))
    def _(j):
        output_shares(0, res[j].v)

