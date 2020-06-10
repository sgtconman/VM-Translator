// push static 2
@test.2
D=M
@SP
M=M+1
A=M-1
M=D
// goto testlabel
@testlabel
0;JMP
// label testlabel
(testlabel)
// push constant -1
@-1
D=A
@SP
M=M+1
A=M-1
M=D
// if-goto testlabel
@SP
M=M-1
A=M
D=M
@testlabel
D+1;JEQ
