# provide_key-0--0
ldint r0, 0 # 0
pushint r0 # 1
# provide_key-0-begin-loop-1
popint r1 # 2
input_shares 2, 0, s0 # 3
ldint r2, 8192 # 4
addint r3, r1, r2 # 5
stmsi s0, r3 # 6
ldint r4, 1 # 7
addint r5, r1, r4 # 8
pushint r5 # 9
ldint r6, 1 # 10
ltint r7, r5, r6 # 11
jmpnz r7, -11 # 12
# provide_key-0-end-loop-2
popint r8 # 13
ldsi s1, 6 # 14
ldsi s2, 5 # 15
triple s4, s5, s6 # 16
subs s7, s1, s4 # 17
subs s8, s2, s5 # 18
startopen 2, s7, s8 # 19
stopopen 2, c0, c1 # 20
mulm s9, s5, c0 # 21
mulm s10, s4, c1 # 22
mulc c2, c0, c1 # 23
adds s11, s6, s9 # 24
adds s12, s11, s10 # 25
addm s3, s12, c2 # 26
output_shares 2, 0, s3 # 27
