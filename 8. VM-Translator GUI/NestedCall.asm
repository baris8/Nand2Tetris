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
//push constant 4000
@4000
D = A
@SP
A = M
M = D
@SP
M = M+1
//pop pointer 0
@THIS
D = A
@R13
M = D
@SP
M = M-1
A = M
D = M
@R13
A = M
M = D
//push constant 5000
@5000
D = A
@SP
A = M
M = D
@SP
M = M+1
//pop pointer 1
@THAT
D = A
@R13
M = D
@SP
M = M-1
A = M
D = M
@R13
A = M
M = D
//call Sys.main 0
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
@Sys.main
0;JMP
(ReturnAdress0)
//pop temp 1
@R5
D = A
@1
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
//label LOOP
(null$LOOP)
//goto LOOP
@null$LOOP
0;JMP
//
//
//
//
//
//
//
//function Sys.main 5
(Sys.main)
@SP
A = M
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
M = 0
A = A + 1
D = A
@SP
M = D
//push constant 4001
@4001
D = A
@SP
A = M
M = D
@SP
M = M+1
//pop pointer 0
@THIS
D = A
@R13
M = D
@SP
M = M-1
A = M
D = M
@R13
A = M
M = D
//push constant 5001
@5001
D = A
@SP
A = M
M = D
@SP
M = M+1
//pop pointer 1
@THAT
D = A
@R13
M = D
@SP
M = M-1
A = M
D = M
@R13
A = M
M = D
//push constant 200
@200
D = A
@SP
A = M
M = D
@SP
M = M+1
//pop local 1
@LCL
D = M
@1
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
//push constant 40
@40
D = A
@SP
A = M
M = D
@SP
M = M+1
//pop local 2
@LCL
D = M
@2
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
//push constant 6
@6
D = A
@SP
A = M
M = D
@SP
M = M+1
//pop local 3
@LCL
D = M
@3
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
//push constant 123
@123
D = A
@SP
A = M
M = D
@SP
M = M+1
//call Sys.add12 1
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
@1
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Sys.add12
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
//push local 2
@LCL
D = M
@2
A = A+D
D = M
@SP
A = M
M = D
@SP
M = M+1
//push local 3
@LCL
D = M
@3
A = A+D
D = M
@SP
A = M
M = D
@SP
M = M+1
//push local 4
@LCL
D = M
@4
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
//function Sys.add12 0
(Sys.add12)
@SP
A = M
D = A
@SP
M = D
//push constant 4002
@4002
D = A
@SP
A = M
M = D
@SP
M = M+1
//pop pointer 0
@THIS
D = A
@R13
M = D
@SP
M = M-1
A = M
D = M
@R13
A = M
M = D
//push constant 5002
@5002
D = A
@SP
A = M
M = D
@SP
M = M+1
//pop pointer 1
@THAT
D = A
@R13
M = D
@SP
M = M-1
A = M
D = M
@R13
A = M
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
//push constant 12
@12
D = A
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

