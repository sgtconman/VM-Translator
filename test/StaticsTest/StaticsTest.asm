@256
D=A
@SP
M=D
// call Sys.init 0
@$RETADD$4
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
($RETADD$4)
// function Class2.set 0
(Class2.set)
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
// pop static 0
@Class2.0
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
// pop static 1
@Class2.1
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
// push constant 0
@0
D=A
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
// function Class2.get 0
(Class2.get)
// push static 0
@Class2.0

D=M
@SP
M=M+1
A=M-1
M=D
// push static 1
@Class2.1

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
// function Sys.init 0
(Sys.init)
// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D
// call Class1.set 2
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
A=A-1
D=A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.set
0;JMP
($RETADD$0)
// pop temp 0
@5
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
// push constant 23
@23
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
// call Class2.set 2
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
A=A-1
D=A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.set
0;JMP
($RETADD$1)
// pop temp 0
@5
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
// call Class1.get 0
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
D=A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.get
0;JMP
($RETADD$2)
// call Class2.get 0
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
@Class2.get
0;JMP
($RETADD$3)
// label WHILE
(WHILE)
// goto WHILE
@WHILE
0;JMP
// function Class1.set 0
(Class1.set)
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
// pop static 0
@Class1.0
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
// pop static 1
@Class1.1
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
// push constant 0
@0
D=A
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
// function Class1.get 0
(Class1.get)
// push static 0
@Class1.0

D=M
@SP
M=M+1
A=M-1
M=D
// push static 1
@Class1.1

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