@256
D = A
@SP
M = D
@SP
D = M
@R13
M = D
@ReturnAdress0
D = A
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@SP
A = M
M = D
@SP
M = M + 1
@ARG
D = M
@SP
A = M
M = D
@SP
M = M + 1
@THIS
D = M
@SP
A = M
M = D
@SP
M = M + 1
@THAT
D = M
@SP
A = M
M = D
@SP
M = M + 1
@R13
D = M
@0
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Sys.init
0;JMP
(ReturnAdress0)
//
//
//
//
//
//
//
//
//function Main.fibonacci 0
(Main.fibonacci)
@SP
A = M
D = A
@SP
M = D
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
//push constant 2
@2
D = A
@SP
A = M
M = D
@SP
M = M+1
//lt
@SP
M = M-1
A = M
D = M
A = A-1
D = M-D
@JLT_TRUE_1
D;JLT
@SP
A = M-1
M = 0
@JLT_FALSE_1
0;JMP
(JLT_TRUE_1)
@SP
A = M-1
M = -1
(JLT_FALSE_1)
//if-goto IF_TRUE
@SP
M = M-1
A = M
D = M
@null$IF_TRUE
D;JNE
//goto IF_FALSE
@null$IF_FALSE
0;JMP
//label IF_TRUE
(null$IF_TRUE)
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
//label IF_FALSE
(null$IF_FALSE)
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
//push constant 2
@2
D = A
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
//call Main.fibonacci 1
@SP
D = M
@R13
M = D
@ReturnAdress2
D = A
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@SP
A = M
M = D
@SP
M = M + 1
@ARG
D = M
@SP
A = M
M = D
@SP
M = M + 1
@THIS
D = M
@SP
A = M
M = D
@SP
M = M + 1
@THAT
D = M
@SP
A = M
M = D
@SP
M = M + 1
@R13
D = M
@1
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Main.fibonacci
0;JMP
(ReturnAdress2)
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
//push constant 1
@1
D = A
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
//call Main.fibonacci 1
@SP
D = M
@R13
M = D
@ReturnAdress3
D = A
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@SP
A = M
M = D
@SP
M = M + 1
@ARG
D = M
@SP
A = M
M = D
@SP
M = M + 1
@THIS
D = M
@SP
A = M
M = D
@SP
M = M + 1
@THAT
D = M
@SP
A = M
M = D
@SP
M = M + 1
@R13
D = M
@1
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Main.fibonacci
0;JMP
(ReturnAdress3)
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
//
//
//
//
//
//
//
//
//function Sys.init 0
(Sys.init)
@SP
A = M
D = A
@SP
M = D
//push constant 4
@4
D = A
@SP
A = M
M = D
@SP
M = M+1
//call Main.fibonacci 1
@SP
D = M
@R13
M = D
@ReturnAdress4
D = A
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@SP
A = M
M = D
@SP
M = M + 1
@ARG
D = M
@SP
A = M
M = D
@SP
M = M + 1
@THIS
D = M
@SP
A = M
M = D
@SP
M = M + 1
@THAT
D = M
@SP
A = M
M = D
@SP
M = M + 1
@R13
D = M
@1
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Main.fibonacci
0;JMP
(ReturnAdress4)
//label WHILE
(null$WHILE)
//goto WHILE
@null$WHILE
0;JMP

