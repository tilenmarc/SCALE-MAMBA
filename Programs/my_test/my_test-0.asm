# my_test-0--0
ldint r0, 0 # 0
pushint r0 # 1
# my_test-0-begin-loop-1
popint r1 # 2
private_input s0, 0, 0 # 3
ldint r2, 8192 # 4
addint r3, r1, r2 # 5
stmsi s0, r3 # 6
private_input s1, 1, 1 # 7
ldint r4, 8197 # 8
addint r5, r1, r4 # 9
stmsi s1, r5 # 10
private_input s2, 2, 2 # 11
ldint r6, 8202 # 12
addint r7, r1, r6 # 13
stmsi s2, r7 # 14
ldint r8, 8192 # 15
addint r9, r1, r8 # 16
ldmsi s3, r9 # 17
ldint r10, 8197 # 18
addint r11, r1, r10 # 19
ldmsi s4, r11 # 20
adds s5, s3, s4 # 21
ldint r12, 8207 # 22
addint r13, r1, r12 # 23
stmsi s5, r13 # 24
ldint r14, 8207 # 25
addint r15, r1, r14 # 26
ldmsi s6, r15 # 27
ldint r16, 8202 # 28
addint r17, r1, r16 # 29
ldmsi s7, r17 # 30
adds s8, s6, s7 # 31
ldint r18, 8207 # 32
addint r19, r1, r18 # 33
stmsi s8, r19 # 34
ldint r20, 1 # 35
addint r21, r1, r20 # 36
pushint r21 # 37
ldint r22, 5 # 38
ltint r23, r21, r22 # 39
jmpnz r23, -39 # 40
# my_test-0-end-loop-2
popint r24 # 41
ldsi s9, 0 # 42
stms s9, 8212 # 43
ldint r25, 0 # 44
pushint r25 # 45
# my_test-0-begin-loop-3
popint r26 # 46
ldint r27, 8212 # 47
addint r28, r26, r27 # 48
ldmsi s10, r28 # 49
ldint r29, 8207 # 50
addint r30, r26, r29 # 51
ldmsi s11, r30 # 52
adds s12, s10, s11 # 53
ldint r31, 1 # 54
addint r32, r26, r31 # 55
ldint r33, 8212 # 56
addint r34, r32, r33 # 57
stmsi s12, r34 # 58
ldint r35, 1 # 59
addint r36, r26, r35 # 60
pushint r36 # 61
ldint r37, 5 # 62
ltint r38, r36, r37 # 63
jmpnz r38, -19 # 64
# my_test-0-end-loop-4
ldms s13, 8217 # 65
private_output s13, 0, 0 # 66
