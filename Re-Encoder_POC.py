import random

CODE_LEN = 4
NUM_SYMBOLS = 3

L = 8
L_A = 5
L_B = 2
L_C = 1

symbols = ['A', 'B', 'C']
huffman_codes = ['0', '10', '11']

symbol_to_code = dict(zip(symbols, huffman_codes))

codes = [['A', '0', 'B', '10'], 'C', '11']

def gen_data(len):
    symbols = 'AAAAABBC'
    
    data = ''

    for i in range(0,len):
        data += symbols[random.randint(0,7)]
    
    return data

def HF_encode(data):
    encoding = ''

    for i in range(0, len(data)):

        encoding += symbol_to_code[data[i]]
    
    return encoding

def tANS_encode(hf_data):

    encoding = ''
    
    A_spread, B_spread, C_spread = create_state_spreads()

    # Determine initial state
    match hf_data[0]:
        case "A":
            state = A_spread[0][1]
        case "B":
            state = B_spread[0][1]
        case "C":
            state = C_spread[0][1]
    
    # Begin encoding
    for i in range(1, len(hf_data)):

        # Determine symbol to encode
        match hf_data[i]:
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

        while ((state>>shift) > L_S*2-1):
            shift+=1

        # Output bits from state to encoding
        for i in range(1, shift+1):
            encoding += str((((state<<(4-i)) &15) >> 3))
        
        # Set next state
        
        state = spread[(state>>shift)-L_S][1]
    
    return encoding, state

def create_state_spreads():
    # Create state spreads
    state_cursor = L
    
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
    
    return A_spread, B_spread, C_spread

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
    
    HC = HF_encode(data)
    tANS, final_state = tANS_encode(data)

    print("Length of Huffman Encoding: ", len(HC))

    print("Length of tANS encoding: ", len(tANS))

    p_changes.append((len(tANS)-len(HC))/len(HC))

    print("Average percent change:", 100*sum(p_changes)/len(p_changes))

main()