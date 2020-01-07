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
//function Class1.set 0
(Class1.set)
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
//pop static 0
@SP
M = M - 1
A = M
D = M
@Class1.vm.0
M = D
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
//pop static 1
@SP
M = M - 1
A = M
D = M
@Class1.vm.1
M = D
//push constant 0
@0
D = A
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
//
//function Class1.get 0
(Class1.get)
@SP
A = M
D = A
@SP
M = D
//push static 0
@Class1.vm.0
D = M
@SP
A = M
M = D
@SP
M = M + 1
//push static 1
@Class1.vm.1
D = M
@SP
A = M
M = D
@SP
M = M + 1
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
//
//
//
//
//
//function Class2.set 0
(Class2.set)
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
//pop static 0
@SP
M = M - 1
A = M
D = M
@Class2.vm.0
M = D
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
//pop static 1
@SP
M = M - 1
A = M
D = M
@Class2.vm.1
M = D
//push constant 0
@0
D = A
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
//
//function Class2.get 0
(Class2.get)
@SP
A = M
D = A
@SP
M = D
//push static 0
@Class2.vm.0
D = M
@SP
A = M
M = D
@SP
M = M + 1
//push static 1
@Class2.vm.1
D = M
@SP
A = M
M = D
@SP
M = M + 1
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
//push constant 6
@6
D = A
@SP
A = M
M = D
@SP
M = M+1
//push constant 8
@8
D = A
@SP
A = M
M = D
@SP
M = M+1
//call Class1.set 2
@SP
D = M
@R13
M = D
@ReturnAdress1
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
@2
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Class1.set
0;JMP
(ReturnAdress1)
//pop temp 0
@R5
D = A
@0
D = D+A
@R13
M = D
@SP
M = M-1
A = M
D = M
@R13
A = M
M = D
//push constant 23
@23
D = A
@SP
A = M
M = D
@SP
M = M+1
//push constant 15
@15
D = A
@SP
A = M
M = D
@SP
M = M+1
//call Class2.set 2
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
@2
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Class2.set
0;JMP
(ReturnAdress2)
//pop temp 0
@R5
D = A
@0
D = D+A
@R13
M = D
@SP
M = M-1
A = M
D = M
@R13
A = M
M = D
//call Class1.get 0
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
@0
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Class1.get
0;JMP
(ReturnAdress3)
//call Class2.get 0
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
@0
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Class2.get
0;JMP
(ReturnAdress4)
//label WHILE
(null$WHILE)
//goto WHILE
@null$WHILE
0;JMP

