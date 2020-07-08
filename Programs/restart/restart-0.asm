# restart-0--0
ldsi s0, 1 # 0
ldsi s1, 2 # 1
ldsi s2, 3 # 2
ldsi s3, 4 # 3
output_shares 5, 3000, s0, s1, s2, s3 # 4
print_char4 2036427856 # 5
print_char4 2048946789 # 6
print_char4 544174693 # 7
print_char4 1702129253 # 8
print_char4 543236210 # 9
print_char4 1651340654 # 10
print_char 101 # 11
print_char 114 # 12
print_char 10 # 13
private_input s4, 0, 0 # 14
print_char4 2036427856 # 15
print_char4 1864397413 # 16
print_char4 1696621934 # 17
print_char4 1919251566 # 18
print_char4 1847615776 # 19
print_char4 1700949365 # 20
print_char 114 # 21
print_char 10 # 22
private_input s5, 1, 0 # 23
triple s7, s8, s9 # 24
subs s10, s4, s7 # 25
subs s11, s5, s8 # 26
startopen 2, s10, s11 # 27
stopopen 2, c0, c1 # 28
mulm s12, s8, c0 # 29
mulm s13, s7, c1 # 30
mulc c2, c0, c1 # 31
adds s14, s9, s12 # 32
adds s15, s14, s13 # 33
addm s6, s15, c2 # 34
print_char4 543516756 # 35
print_char4 1146049104 # 36
print_char4 542393173 # 37
print_char4 1646293865 # 38
print_char4 1735289189 # 39
print_char4 1852142368 # 40
print_char4 1869881460 # 41
print_char4 1634496544 # 42
print_char4 544367993 # 43
print_char 111 # 44
print_char 110 # 45
print_char 101 # 46
print_char 10 # 47
private_output s6, 1, 0 # 48
startopen 1, s4 # 49
stopopen 1, c3 # 50
print_char 32 # 51
print_char 97 # 52
print_char 61 # 53
print_reg c3 # 54
print_char 10 # 55
startopen 1, s5 # 56
stopopen 1, c4 # 57
print_char 32 # 58
print_char 97 # 59
print_char 61 # 60
print_reg c4 # 61
print_char 10 # 62
startopen 1, s6 # 63
stopopen 1, c5 # 64
print_char 32 # 65
print_char 97 # 66
print_char 61 # 67
print_reg c5 # 68
print_char 10 # 69
restart  # 70
