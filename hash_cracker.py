import hashlib

hash_type = str(input('Select a hash type to bruteforce: '))
file_path = str(input('Enter file path of wordlist: '))
hash_to_crack = str(input('Enter the hash to crack: '))

with open(file_path, 'r') as file:
    for line in file.readlines():
        if hash_type == 'md5':
            hash_object = hashlib.md5(line.strip().encode())
            hashed_word = hash_object.hexdigest()
            if hashed_word == hash_to_crack:
                print('Cracked MD5 Password: ' + line.strip())
                exit(0)

        if hash_type == 'sha1':
            hash_object = hashlib.md5(line.strip().encode())
            hashed_word = hash_object.hexdigest()
            if hashed_word == hash_to_crack:
                print('Cracked SHA1 Password: ' + line.strip())
                exit(0)

    print('Unsuccessful.')
