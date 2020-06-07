
c_type = {}
arith_dict = {}


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
M=M-1
A=M
M=-M
@SP
M=M+1
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
A=A-1
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
A=A-1
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
A=A-1
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

    arith_dict['neg'] = """@SP
M=M-1
A=M
M=!M
@SP
M=M+1
"""
