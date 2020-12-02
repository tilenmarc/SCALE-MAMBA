from Compiler.library import *

def array_copy(a):
    v = sint.Array(len(a))
    @for_range(len(a))
    def f(i):
        v[i] = a[i]
    return v

def bubbleSort(arr):
    n = len(arr)
    # Traverse through all array elements
    @for_range(n)
    def _(i):
        @for_range(n-i-1)
        def _(j):
            comp = arr[j] > arr[j+1]
            x = comp.if_else(arr[j+1], arr[j])
            y = comp.if_else(arr[j], arr[j+1])

            arr[j] = x
            arr[j+1] = y


#
# def merge(arr, l, m, r):
#     n1 = m - l + 1
#     n2 = r- m
#
#     # create temp arrays
#     L = sint.array(n1)
#     R = sint.array(n2)
#
#     # Copy data to temp arrays L[] and R[]
#     @for_range(n1)
#     def _(i):
#         L[i] = arr[l + i]
#
#     @for_range(n2)
#     def _(i):
#         R[j] = arr[m + 1 + j]
#
#         # Merge the temp arrays back into arr[l..r]
#     i = sint(0     # Initial index of first subarray
#     j = 0     # Initial index of second subarray
#     k = l     # Initial index of merged subarray
#
#     @for_range(n2)
#     def _(i):
#         pass
#
#
#     while i < n1 and j < n2 :
#         if L[i] <= R[j]:
#             arr[k] = L[i]
#             i += 1
#         else:
#             arr[k] = R[j]
#             j += 1
#         k += 1
#
#     # Copy the remaining elements of L[], if there
#     # are any
#     while i < n1:
#         arr[k] = L[i]
#         i += 1
#         k += 1
#
#     # Copy the remaining elements of R[], if there
#     # are any
#     while j < n2:
#         arr[k] = R[j]
#         j += 1
#         k += 1
#
# # l is for left index and r is right index of the
# # sub-array of arr to be sorted
# def mergeSort(arr,l=0,r=-1):
#     if r == -1:
#         r = len(arr)
#     if l < r:
#         # Same as (l+r)//2, but avoids overflow for
#         # large l and h
#         m = (l+(r-1))//2
#
#         # Sort first and second halves
#         mergeSort(arr, l, m)
#         mergeSort(arr, m+1, r)
#         merge(arr, l, m, r)