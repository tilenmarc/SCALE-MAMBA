from Compiler import array_util
from Compiler.library import *
from Compiler import nn_utils

def avg_down(a, b):
    s = a + b
    s = (s % 2).if_else(s - 1, s)
    return s / 2


def anonymize_simple(A, k, depth):
    m = len(A[0])
    n = len(A)

    upper = array_util.array_copy(A[0])
    lower = array_util.array_copy(A[0])
    @for_range(n)
    def f(i):
        @for_range(m)
        def g(j):
            upper[j] = (upper[j] < A[i][j]).if_else(A[i][j], upper[j])
            lower[j] = (lower[j] > A[i][j]).if_else(A[i][j], lower[j])

    upperRes = sint.Matrix(n, m)
    lowerRes = sint.Matrix(n, m)
    @for_range(n)
    def f(i):
        @for_range(m)
        def g(j):
            upperRes[i][j] = upper[j]
            lowerRes[i][j] = lower[j]

    upper_by_round = sint.Matrix(2**depth, m)
    lower_by_round = sint.Matrix(2**depth, m)
    position = sint.Array(n)

    @for_range(n)
    def f(i):
        position[i] = sint(0)
    @for_range(m)
    def g(j):
        upper_by_round[0][j] = upper[j]
        lower_by_round[0][j] = lower[j]

    counts = sint.Matrix(depth, n)

    @for_range(depth)
    def f(i):
        print_ln("depth  %s", i)
        num_parts = 2**i
        s_num_parts = sint(num_parts)
        @for_range(num_parts)
        def g(j):
            sj = sint(j)
            cut_dim = get_random_int(20).reveal() % m

            new_bound = avg_down(lower_by_round[j][cut_dim], upper_by_round[j][cut_dim])
            # print_ln("tests  %s %s %s", lower_by_round[j][cut_dim].reveal(), upper_by_round[j][cut_dim].reveal(), new_bound.reveal())
            lower_by_round[num_parts + j][cut_dim] = new_bound
            upper_by_round[num_parts + j][cut_dim] = upper_by_round[j][cut_dim]
            upper_by_round[j][cut_dim] = new_bound

            @for_range(n)
            def f(k):
                cond1 = (position[k] == sj)
                cond2 = (A[k][cut_dim] > new_bound)

                position[k] = cond1.if_else(cond2.if_else(s_num_parts + position[k], position[k]) , position[k])


                # print_ln("cond  %s %s", cond1.reveal(), cond2.reveal())


                # position[i] = sint(0)


            # print_ln("tests  %s %s", avg_down(sint(4), sint(6)).reveal(), avg_down(sint(4), sint(5)).reveal())


    # nn_utils.vector_print(lower)
    # nn_utils.vector_print(upper)
    # nn_utils.vector_print(position)
    # nn_utils.matrix_print(lower_by_round)
    # nn_utils.matrix_print(upper_by_round)





















