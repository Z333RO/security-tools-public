def process_wordlist(input_file, output_file):
    with open(input_file, 'r') as file:
        wordlist = file.read().split()

    modified_wordlist = set()

    for word in wordlist:
        lower_word = word[0].lower() + word[1:]
        upper_word = word[0].upper() + word[1:]
        
        modified_wordlist.add(word)
        modified_wordlist.add(lower_word)
        modified_wordlist.add(upper_word)

    with open(output_file, 'w') as file:
        file.write('\n'.join(modified_wordlist))

# Usage example:
process_wordlist('wordlist.txt', 'new-wordlist.txt')
