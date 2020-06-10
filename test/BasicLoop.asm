// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
// pop local 0
@0
D=A
@LCL
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
// label LOOP_START
(LOOP_START)
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
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
// pop local 0
@0
D=A
@LCL
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
// push constant 1
@1
D=A
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
// if-goto LOOP_START
@SP
M=M-1
A=M
D=M
@LOOP_START
D;JNE
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
