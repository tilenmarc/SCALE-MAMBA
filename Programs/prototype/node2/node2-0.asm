# node2-0--0
ldsi s0, 0 # 0
ldint r0, 0 # 1
pushint r0 # 2
# node2-0-begin-loop-1
popint r1 # 3
ldsi s1, 2 # 4
ldsi s2, 3 # 5
triple s4, s5, s6 # 6
subs s7, s1, s4 # 7
subs s8, s2, s5 # 8
startopen 2, s7, s8 # 9
stopopen 2, c0, c1 # 10
mulm s9, s5, c0 # 11
mulm s10, s4, c1 # 12
mulc c2, c0, c1 # 13
adds s11, s6, s9 # 14
adds s12, s11, s10 # 15
addm s3, s12, c2 # 16
ldint r2, 1 # 17
addint r3, r1, r2 # 18
pushint r3 # 19
ldint r4, 1000 # 20
ltint r5, r3, r4 # 21
jmpnz r5, -20 # 22
# node2-0-end-loop-2
popint r6 # 23
output_shares 2, 0, s0 # 24
restart  # 25
