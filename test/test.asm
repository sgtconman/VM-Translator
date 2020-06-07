// add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
// sub
@SP
M=M-1
A=M
D=M
A=A-1
M=M-D
// push constant 2
// gt
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=-1
@$$TRUE$$0
D;JGT
@SP
A=A-1
M=0
($$TRUE$$0)
// lt
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=-1
@$$TRUE$$1
D;JLT
@SP
A=A-1
M=0
($$TRUE$$1)
