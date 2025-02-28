
DATA_LEN = 8
CODE_LEN = 4
NUM_SYMBOLS = 3
EN_DE_BUFFER_LEN = 32

data = 'ABAAABCA'

codes = [['A', ['0','x','x','x']], ['B', ['1','0','x','x']], ['C', ['1','1','x','x']]]

def HC_encode(data):
    cursor = 0
    encoding = ['x']*EN_DE_BUFFER_LEN

    for i in range(0, DATA_LEN):
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
                encoding[cursor] = code[j]
                cursor+=1
    
    return encoding

def HC_decode(encoding, codes):
    decoding = ['x']*32
    d_cursor = 0

    code_buffer = ['x', 'x', 'x', 'x']
    b_cursor = 0

    for i in range(0, EN_DE_BUFFER_LEN):
        if encoding[i] == 'x':
            return decoding
        
        else:
            code_buffer[b_cursor] = encoding[i]
            b_cursor+=1
            
            match code_buffer:
                case ['0','x','x','x']:
                    decoding[d_cursor: d_cursor+1] = codes[0][0]
                    code_buffer = ['x', 'x', 'x', 'x']
                    d_cursor+=1
                    b_cursor = 0

                case ['1','0','x','x']:
                    decoding[d_cursor: d_cursor+1] = codes[1][0]
                    code_buffer = ['x', 'x', 'x', 'x']
                    d_cursor+=1
                    b_cursor = 0

                case ['1','1','x','x']:
                    decoding[d_cursor: d_cursor+1] = codes[2][0]
                    code_buffer = ['x', 'x', 'x', 'x']
                    d_cursor+=1
                    b_cursor = 0

    return decoding

def clog2(state, L_S):
    for i in range(0, 4):
        if ((state>>i) <= L_S*2-1):
            return i

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
    match data[DATA_LEN-1]:
        case "A":
            state = A_spread[0][1]
        case "B":
            state = B_spread[0][1]
        case "C":
            state = C_spread[0][1]
    
    # Begin encoding
    for i in range(DATA_LEN-2, -1, -1):
        
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
        if (state > spread[L_S-1][0]):
            shift = clog2(state, L_S)

        else:
            shift = 0

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
        match data[i]:
            case "A":
                state = A_spread[(state>>shift)-L_A][1]
            case "B":
                state = B_spread[(state>>shift)-L_B][1]
            case "C":
                state = C_spread[(state>>shift)-L_C][1]
    
    return encoding

print(HC_encode(data))

print(tANS_encode(data))