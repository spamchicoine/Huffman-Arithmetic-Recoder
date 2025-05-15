# Size of output buffer in hardware design (o_stream)
out_buffer_len = 3

# Probabilities parameters for optimal tANS
L = 8
L_A = 5
L_B = 2
L_C = 1

# Valid symbols and corresponding codes
symbols = ['A', 'B', 'C']
huffman_codes = ['0', '10', '11']
normalized_huffman_codes = ['00', '10', '11']

# Mapping of symbols to Huffman Codes
symbol_to_code = dict(zip(symbols, huffman_codes))
symbol_to_normalized_code = dict(zip(symbols, normalized_huffman_codes))


def parse_output():

    with open("output.txt", "r") as file:
        
        content = file.read().split("\n")

        final_state = int(content.pop(len(content)-1), 2)

        encoding = ''
        
        for i, pair in enumerate(content):
            if 'x' not in pair:
                content[i] = pair.split(",")
                
                content[i][0] = int(pair[0])

                BTR = content[i][0]
                
                for j in range(out_buffer_len-BTR, out_buffer_len):
                    encoding += content[i][1][j]

        return encoding, final_state

def HC_encode(data):

    encoding = ''
    normalized_encoding = ''

    for i in range(0, len(data)):

        encoding += symbol_to_code[data[i]]
        normalized_encoding += symbol_to_normalized_code[data[len(data)-(i+1)]]
    
    return encoding, normalized_encoding

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
        for i in range(shift, 0, -1):
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

def tANS_decode(encoding, i_state):
    state = int(i_state)

    spreads = create_state_spreads()

    cursor = len(encoding)-1

    decoding = ''

    while cursor >= 0:
        
        for i, spread in enumerate(spreads):
            for pair in spread:
                if pair[1] == state:
                    s = pair[0]
                    m = i
        
        decoding+=symbols[m]

        while s < L:
            if encoding[cursor] == '0':
                s*=2
            else:
                s = s*2 + 1
            cursor-=1
        state = s

    for i, spread in enumerate(spreads):
        for pair in spread:
            if pair[1] == state:
                s = pair[0]
                m = i

    decoding+=symbols[m]

    return decoding[::-1]

    #match state:


def main():
    data = input("\nEnter the symbols to encode from the set {A , B, C}: ").strip()

    # Generated Huffman encoding of symbols
    Huffman_Encoding, Normalized_Huffman_Encoding = HC_encode(data)

    print(f"\nHuffman Encoding: {Huffman_Encoding}, Length: {len(Huffman_Encoding)}\n")

    print(f"Enter this in the testbench as reverse_huffman_data and adjust the logic size (see commented examples in testbench)")
    print(f"Normalized Encoding: [ {Normalized_Huffman_Encoding} ] Size: [ {len(Normalized_Huffman_Encoding)} ]\n")

    stall = input("\nPress enter when new output.txt has been generated from testbench and moved to this directory:")

    # Feed reveresed data into tANS encoder
    tANS_encoding, final_state = tANS_encode(data)

    print(f"\nPython tANS Encoding: {tANS_encoding}, Length: {len(tANS_encoding)}")
    print(f"Python tANS Final State: {final_state}\n")

    hardware_encoding, hardware_state = parse_output()

    print(f"Hardware tANS Encoding: {hardware_encoding}, Length: {len(hardware_encoding)}")
    print(f"Hardware tANS Final State: {hardware_state}\n")

    if tANS_encoding == hardware_encoding:
        print("[ tANS encodings match. ]")
        
        if final_state == hardware_state:
            print("[ Final states match. ]")
            print(f"[ Bits saved over original Huffman ] {len(Huffman_Encoding)-len(hardware_encoding)}")

            tANS_decoding = tANS_decode(hardware_encoding, hardware_state)
            print(f"\nOriginal Sequence: {data}")
            print(f"Decoded Sequence: {tANS_decoding}")

        
        else:
            print("ERROR: Final states mismatch")

    else:
        print("ERROR: tANS encodings mismatch.")

main()