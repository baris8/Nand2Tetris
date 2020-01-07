@17
D = A
@SP
A = M
M = D
@SP
M = M+1
@17
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JEQ_TRUE_0
D;JEQ
@SP
A = M-1
M = 0
@JEQ_FALSE_0
0;JMP
(JEQ_TRUE_0)
@SP
A = M-1
M = -1
(JEQ_FALSE_0)
@17
D = A
@SP
A = M
M = D
@SP
M = M+1
@16
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JEQ_TRUE_1
D;JEQ
@SP
A = M-1
M = 0
@JEQ_FALSE_1
0;JMP
(JEQ_TRUE_1)
@SP
A = M-1
M = -1
(JEQ_FALSE_1)
@16
D = A
@SP
A = M
M = D
@SP
M = M+1
@17
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JEQ_TRUE_2
D;JEQ
@SP
A = M-1
M = 0
@JEQ_FALSE_2
0;JMP
(JEQ_TRUE_2)
@SP
A = M-1
M = -1
(JEQ_FALSE_2)
@892
D = A
@SP
A = M
M = D
@SP
M = M+1
@891
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JLT_TRUE_3
D;JLT
@SP
A = M-1
M = 0
@JLT_FALSE_3
0;JMP
(JLT_TRUE_3)
@SP
A = M-1
M = -1
(JLT_FALSE_3)
@891
D = A
@SP
A = M
M = D
@SP
M = M+1
@892
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JLT_TRUE_4
D;JLT
@SP
A = M-1
M = 0
@JLT_FALSE_4
0;JMP
(JLT_TRUE_4)
@SP
A = M-1
M = -1
(JLT_FALSE_4)
@891
D = A
@SP
A = M
M = D
@SP
M = M+1
@891
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JLT_TRUE_5
D;JLT
@SP
A = M-1
M = 0
@JLT_FALSE_5
0;JMP
(JLT_TRUE_5)
@SP
A = M-1
M = -1
(JLT_FALSE_5)
@32767
D = A
@SP
A = M
M = D
@SP
M = M+1
@32766
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JGT_TRUE_6
D;JGT
@SP
A = M-1
M = 0
@JGT_FALSE_6
0;JMP
(JGT_TRUE_6)
@SP
A = M-1
M = -1
(JGT_FALSE_6)
@32766
D = A
@SP
A = M
M = D
@SP
M = M+1
@32767
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JGT_TRUE_7
D;JGT
@SP
A = M-1
M = 0
@JGT_FALSE_7
0;JMP
(JGT_TRUE_7)
@SP
A = M-1
M = -1
(JGT_FALSE_7)
@32766
D = A
@SP
A = M
M = D
@SP
M = M+1
@32766
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JGT_TRUE_8
D;JGT
@SP
A = M-1
M = 0
@JGT_FALSE_8
0;JMP
(JGT_TRUE_8)
@SP
A = M-1
M = -1
(JGT_FALSE_8)
@57
D = A
@SP
A = M
M = D
@SP
M = M+1
@31
D = A
@SP
A = M
M = D
@SP
M = M+1
@53
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
@SP
M = M-1
A = M
M = M+D
@SP
M = M+1
@112
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
@SP
M = M-1
A = M
M = M-D
@SP
M = M+1
@SP
M = M-1
A = M
M = -M
@SP
M = M+1
@SP
M = M-1
A = M
D = M
@SP
M = M-1
A = M
M = M&D
@SP
M = M+1
@82
D = A
@SP
A = M
M = D
@SP
M = M+1
@SP
M = M-1
A = M
D = M
@SP
M = M-1
A = M
M = M|D
@SP
M = M+1
@SP
M = M-1
A = M
M = !M
@SP
M = M+1

