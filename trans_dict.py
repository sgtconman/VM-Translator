
c_type = {}
arith_dict = {}
pushpop_dict = {}
branch_dict = {}


def dict_initializer():

    # defines the command types
    c_type.update([ ('add', 'c_arith'), ('sub', 'c_arith'), ('neg', 'c_arith'), ('eq', 'c_arith'),
    ('gt', 'c_arith'), ('lt', 'c_arith'), ('and', 'c_arith'), ('or', 'c_arith'), ('not', 'c_arith'),
    ('pop', 'c_pop'), ('push', 'c_push'), ('label', 'c_label'), ('goto', 'c_goto'), ('if-goto', 'c_if'),
    ('function', 'c_function'), ('call', 'c_call')])

    arith_dict['add'] = """@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
"""

    arith_dict['sub'] = """@SP
M=M-1
A=M
D=M
A=A-1
M=M-D
"""

    arith_dict['neg'] = """@SP
A=M-1
M=-M
"""

# $$TRUE$$ will be replaced when translating the code

    arith_dict['eq'] = """@SP
M=M-1
A=M
D=M
A=A-1
D=D-M
M=-1
@$$TRUE$$
D;JEQ
@SP
A=M-1
M=0
($$TRUE$$)
"""

    arith_dict['gt'] = """@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=-1
@$$TRUE$$
D;JGT
@SP
A=M-1
M=0
($$TRUE$$)
"""

    arith_dict['lt'] = """@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=-1
@$$TRUE$$
D;JLT
@SP
A=M-1
M=0
($$TRUE$$)
"""

    arith_dict['and'] = """@SP
M=M-1
A=M
D=M
A=A-1
M=D&M
"""

    arith_dict['or'] = """@SP
M=M-1
A=M
D=M
A=A-1
M=D|M
"""

    arith_dict['not'] = """@SP
A=M-1
M=!M
"""

# template push/pop commands
    pushpop_dict['pop'] = """
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
"""

    pushpop_dict['push'] = """
D=M
@SP
M=M+1
A=M-1
M=D
"""

    pushpop_dict['local'] = """@$i$
D=A
@LCL
AD=D+M"""

    pushpop_dict['argument'] = """@$i$
D=A
@ARG
AD=D+M"""

    pushpop_dict['this'] = """@$i$
D=A
@THIS
AD=D+M"""

    pushpop_dict['that'] = """@$i$
D=A
@THAT
AD=D+M"""

    pushpop_dict['static'] = """@$DUMMY$"""

    pushpop_dict['temp'] = """@$DUMMY$
"""

    pushpop_dict['pointer'] = """@$DUMMY$
D=A
"""

    pushpop_dict['constant'] = """@$i$
D=A
@SP
M=M+1
A=M-1
M=D
"""

    branch_dict['label'] = """($LABEL$)
"""

    branch_dict['goto'] = """@$LABEL$
0;JMP
"""

    branch_dict['if-goto'] = """@SP
M=M-1
A=M
D=M
@$LABEL$
D;JNE
"""