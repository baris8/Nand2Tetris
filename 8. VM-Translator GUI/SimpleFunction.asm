//
//
//
//
//
//function SimpleFunction.test 2
(SimpleFunction.test)
@SP
A = M
M = 0
A = A + 1
M = 0
A = A + 1
D = A
@SP
M = D
//push local 0
@LCL
D = M
@0
A = A+D
D = M
@SP
A = M
M = D
@SP
M = M+1
//push local 1
@LCL
D = M
@1
A = A+D
D = M
@SP
A = M
M = D
@SP
M = M+1
//add
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
//not
@SP
M = M-1
A = M
M = !M
@SP
M = M+1
//push argument 0
@ARG
D = M
@0
A = A+D
D = M
@SP
A = M
M = D
@SP
M = M+1
//add
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
//push argument 1
@ARG
D = M
@1
A = A+D
D = M
@SP
A = M
M = D
@SP
M = M+1
//sub
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
//return
@LCL
D = M
@R13
M = D
@5
A = D - A
D = M
@R14
M = D
@SP
AM = M - 1
D = M
@ARG
A = M
M = D
@ARG
D = M + 1
@SP
M = D
@R13
M = M - 1
A = M
D = M
@THAT
M = D
@R13
M = M - 1
A = M
D = M
@THIS
M = D
@R13
M = M - 1
A = M
D = M
@ARG
M = D
@R13
M = M - 1
A = M
D = M
@LCL
M = D
@R14
A = M
0;JMP

