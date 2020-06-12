// function Sys.init 0
(Sys.init)
// push constant 4000
@4000
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
// push constant 5000
@5000
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
// call Sys.main 0
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
D=A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.main
0;JMP
($RETADD$0)
// pop temp 1
@6
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
// label LOOP
(LOOP)
// goto LOOP
@LOOP
0;JMP
// function Sys.main 5
(Sys.main)
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
// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 4001
@4001
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
// push constant 5001
@5001
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
// push constant 200
@200
D=A
@SP
M=M+1
A=M-1
M=D
// pop local 1
@1
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
// push constant 40
@40
D=A
@SP
M=M+1
A=M-1
M=D
// pop local 2
@2
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
// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
// pop local 3
@3
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
// push constant 123
@123
D=A
@SP
M=M+1
A=M-1
M=D
// call Sys.add12 1
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
@Sys.add12
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
// push local 2
@2
D=A
@LCL
AD=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push local 3
@3
D=A
@LCL
AD=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push local 4
@4
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
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
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
// function Sys.add12 0
(Sys.add12)
// push constant 4002
@4002
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
// push constant 5002
@5002
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
// push constant 12
@12
D=A
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
