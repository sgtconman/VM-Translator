import sys
from trans_dict import * # uses trans_dict to store dictionaries of hardcoded translation specifications

class line_elements:
    def __init__(self,line):
        self.line = line
        self.type = ''
        self.arg1 = ''
        self.arg2 = ''
        self.arg3 = ''

# dictionary for command type categories

# counts number of relational operators to assign unique labels
relation_count = 0


def main():

    if len(sys.argv) != 2:
        sys.exit("input 1 argument: [program].vm")

    dict_initializer()

    # opens input .vm file and writes each line to a list
    vm_file_name = sys.argv[1]
    vm_file = open(vm_file_name, 'r')
    vm_lines = vm_file.readlines()
    vm_file.close()


    # file_name used for naming static variables per specification
    file_path = vm_file_name.strip(".vm")
    file_name = file_path.split('/')[-1]


    # parser cleans spaces/comments and parses the  vm line elements
    parsed_lines = []
    parser(vm_lines, parsed_lines)


    # translates the parsed vm lines into asm code
    asm_lines = []
    for i in range(len(parsed_lines)):
        code_writer(parsed_lines[i], asm_lines, file_name)


    # creates .asm output file and opens for writing
    asm_file_name = file_path + ".asm"
    asm_file = open(asm_file_name, 'w')
    asm_file.writelines(asm_lines)
    asm_file.close()


# parser cleans spaces/comments and parses the  vm line elements
def parser(vm_lines, parsed_lines):

    line_count = 0
    for i in range(len(vm_lines)):

        temp_line = vm_lines[i].split('//')[0].strip() + '\n'

        if len(temp_line) > 1:
            parsed_lines.append(line_elements(temp_line))
            line_parts = temp_line.split()
            parsed_lines[line_count].arg1 = line_parts[0]
            parsed_lines[line_count].type = c_type[line_parts[0]]

            if len(line_parts) >= 2:
                parsed_lines[line_count].arg2 = line_parts[1]
            if len(line_parts) == 3:
                parsed_lines[line_count].arg3 = line_parts[2]

            line_count += 1


# translates the parsed vm lines into asm code one line at a time
def code_writer(parsed_line, asm_lines, file_name):

    global relation_count
    asm_lines.append('// ' + parsed_line.line)

    if parsed_line.type == "c_arith":
        asm_lines.append(arith_dict[parsed_line.arg1])
        if parsed_line.arg1 in ('gt', 'lt', 'eq'):
            asm_lines[-1] = asm_lines[-1].replace('$$TRUE$$', '$$TRUE$$' + str(relation_count)) # if relational operator, replaces template label with unique label
            relation_count += 1

    if parsed_line.type in ("c_pop" , 'c_push'):
        asm_lines.append(pushpop_dict[parsed_line.arg2])
        asm_lines[-1] = asm_lines[-1].replace('$i$', (parsed_line.arg3))

        if parsed_line.arg2 == 'static':
            if parsed_line.arg1 == 'pop':
                asm_lines[-1] += "D=A\n"
            asm_lines[-1] = asm_lines[-1].replace('$DUMMY$', file_name + '.' + str(int(parsed_line.arg3)))
        if parsed_line.arg2 == 'pointer':
            if int(parsed_line.arg3) == 0:
                asm_lines[-1] = asm_lines[-1].replace('$DUMMY$', 'THIS')
            else:
                asm_lines[-1] = asm_lines[-1].replace('$DUMMY$', 'THAT')
        if parsed_line.arg2 == 'temp':
            if parsed_line.arg1 == 'pop':
                asm_lines[-1] += "D=A\n"
            asm_lines[-1] = asm_lines[-1].replace('$DUMMY$', str(5+int(parsed_line.arg3)))

        if parsed_line.arg2 != 'constant':
            asm_lines[-1] += pushpop_dict[parsed_line.arg1]



main()