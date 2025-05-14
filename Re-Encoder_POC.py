import random

CODE_LEN = 4
NUM_SYMBOLS = 3
EN_DE_BUFFER_LEN = 2048

codes = [['A', ['0','x','x','x']], ['B', ['1','0','x','x']], ['C', ['1','1','x','x']]]

def gen_data(len):
    symbols = 'AAAAABBC'
    
    data = ''

    for i in range(0,len):
        data += symbols[random.randint(0,7)]
    
    return data

def HC_encode(data):
    cursor = 0
    encoding = ['x']*EN_DE_BUFFER_LEN

    for i in range(0, len(data)):
        match data[i]:
            case 'A':
                code = ['0','x','x','x']

            case 'B':
                code = ['1','0','x','x']

            case 'C':
                code = ['1','1','x','x']

            case _:
                return -1

        for j in range(0, CODE_LEN):
            if code[j] != 'x':
                encoding[cursor] = int(code[j])
                cursor+=1
    
    return encoding

def tANS_encode(data):

    L = 8
    L_A = 5
    L_B = 2
    L_C = 1

    A_sub_cycle = [L_A, L_A*2-1]
    B_sub_cycle = [L_B, L_B*2-1]
    C_sub_cycle = [L_C, L_C*2-1]

    state_range = [L, L*2-1]

    state_cursor = L

    encoding = ['x']*EN_DE_BUFFER_LEN
    e_cursor = 0
    
    # Create state spreads
    A_spread = [['x', 'x'] for i in range(0,L_A)]
    B_spread = [['x', 'x'] for i in range(0,L_B)]
    C_spread = [['x', 'x'] for i in range(0,L_C)]
        
    for i in range(0, L_A):
        A_spread[i][0] = L_A+i
        A_spread[i][1] = state_cursor
        state_cursor+=1

    for i in range(0, L_B):
        B_spread[i][0] = L_B+i
        B_spread[i][1] = state_cursor
        state_cursor+=1

    for i in range(0, L_C):
        C_spread[i][0] = L_C+i
        C_spread[i][1] = state_cursor
        state_cursor+=1
    
    # Determine initial state
    match data[len(data)-1]:
        case "A":
            state = A_spread[0][1]
        case "B":
            state = B_spread[0][1]
        case "C":
            state = C_spread[0][1]
    
    # Begin encoding
    for i in range(len(data)-2, -1, -1):
        
        # Determine symbol to encode
        match data[i]:
            case "A":
                L_S = L_A
                spread = A_spread
            case "B":
                L_S = L_B
                spread = B_spread
            case "C":
                L_S = L_C
                spread = C_spread
        
        # Determine number of bits from state to output
        shift = 0

        for j in range(0, 4):
            if ((state>>j) <= L_S*2-1):
                shift = j
                break

        # Output bits from state to encoding
        match shift:
            case 0:
                pass

            case 1:
                encoding[e_cursor] = (((state<<3)&15)>>3)
                e_cursor += 1

            case 2:
                encoding[e_cursor] = (((state<<3)&15)>>3)
                encoding[e_cursor+1] = (((state<<2)&15)>>3)
                e_cursor += 2

            case 3:
                encoding[e_cursor] = (((state<<3)&15)>>3)
                encoding[e_cursor+1] = (((state<<2)&15)>>3)
                encoding[e_cursor+2] = (((state<<1)&15)>>3)
                e_cursor += 3
        
        # Set next state
        
        state = spread[(state>>shift)-L_S][1]
    
    return encoding

def main():

    p_changes = []

    sel = input("(1) Random Data:\n(2) User Sequence: \n")

    while ( sel not in ['1', '2']):
            sel = input("(1) Random Data:\n(2) User Sequence: \n")

    if sel == '1':
        sequence_length = int(input("\nEnter random sequence length: "))
        data = gen_data(sequence_length)

    else:
        data = input("\nEnter sequence of symbols {A, B, C}: ")
        data = data * int(input("\nEnter number of times to repeat sequence: "))
    
    HC = HC_encode(data)
    tANS = tANS_encode(data)

    for i, sym in enumerate(HC):
        if sym == 'x':
            v1 = i
            print("Length of Huffman Encoding: ",i)
            break

    for i, sym in enumerate(tANS):
        if sym == 'x':
            v2 = i
            print("Length of tANS encoding: ",i)
            break
    p_changes.append((v2-v1)/v1)

    print("Average percent change:", 100*sum(p_changes)/len(p_changes))

main()