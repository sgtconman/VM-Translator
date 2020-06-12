// function SimpleFunction.test 2
(SimpleFunction.test)
// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
// push local 0
@0
D=A
@LCL
AD=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push local 1
@1
D=A
@LCL
AD=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
// not
@SP
A=M-1
M=!M
// push argument 0
@0
D=A
@ARG
AD=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
// push argument 1
@1
D=A
@ARG
AD=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// sub
@SP
M=M-1
A=M
D=M
A=A-1
M=M-D
// return
@LCL
D=M
@R14
M=D
@LCL
D=M
@5
A=D-A
D=M
@R15
M=D
// pop argument 0
@0
D=A
@ARG
AD=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// SP = ARG +1
@ARG
D=M+1
@SP
M=D
// THAT = endframe - 1
@R14
AM=M-1
D=M
@THAT
M=D
// THIS = endframe - 2
@R14
AM=M-1
D=M
@THIS
M=D
// ARG = endframe - 3
@R14
AM=M-1
D=M
@ARG
M=D
// LCL = endframe - 4
@R14
AM=M-1
D=M
@LCL
M=D
@R15
A=M
0;JMP
