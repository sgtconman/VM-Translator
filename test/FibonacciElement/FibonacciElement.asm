@256
D=A
@SP
M=D
// call Sys.init 0
@$RETADD$3
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@SP
A=M
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
D=A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
($RETADD$3)
// function Sys.init 0
(Sys.init)
// push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D
// call Main.fibonacci 1
@$RETADD$0
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@SP
A=M
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
D=A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
($RETADD$0)
// label WHILE
(WHILE)
// goto WHILE
@WHILE
0;JMP
// function Main.fibonacci 0
(Main.fibonacci)
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
// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
// lt
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=-1
@$$TRUE$$0
D;JLT
@SP
A=M-1
M=0
($$TRUE$$0)
// if-goto IF_TRUE
@SP
M=M-1
A=M
D=M
@IF_TRUE
D;JNE
// goto IF_FALSE
@IF_FALSE
0;JMP
// label IF_TRUE
(IF_TRUE)
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
// label IF_FALSE
(IF_FALSE)
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
// push constant 2
@2
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
// call Main.fibonacci 1
@$RETADD$1
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@SP
A=M
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
D=A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
($RETADD$1)
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
// call Main.fibonacci 1
@$RETADD$2
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@SP
A=M
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
D=A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
($RETADD$2)
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
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
