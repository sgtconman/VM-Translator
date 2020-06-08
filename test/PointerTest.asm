// push constant 3030
@3030
D=A
@SP
M=M+1
A=M-1
M=D
// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// push constant 3040
@3040
D=A
@SP
M=M+1
A=M-1
M=D
// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
// pop this 2
@2
D=A
@THIS
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
// push constant 46
@46
D=A
@SP
M=M+1
A=M-1
M=D
// pop that 6
@6
D=A
@THAT
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
// push pointer 0
@THIS
D=A

D=M
@SP
M=M+1
A=M-1
M=D
// push pointer 1
@THAT
D=A

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
// push this 2
@2
D=A
@THIS
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
// push that 6
@6
D=A
@THAT
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
