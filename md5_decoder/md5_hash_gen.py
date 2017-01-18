""" Creates a list of randomly created words and their md5 hashes. """
from random import randint
import argparse
import hashlib


def hash_generator(n_hashes):
    """ Generates random plain text strings and then hashes them using the md5 algorithm. """
    words = []
    hashes = []
    # Make a pool of characters from which each letter of the new word will be randomly selected.
    char_pool = [chr(i) for i in range(48, 58)]
    for i in range(65, 91):
        char_pool.append(chr(i))

    for i in range(97, 123):
        char_pool.append(chr(i))

    for i in range(n_hashes):
        word = ''
        # Generate words of random length to be hashed.
        word_length = randint(8, 16)
        for j in range(word_length):
            # Each letter of the word is a random Ascii character.
            word += char_pool[randint(0, len(char_pool) - 1)]
        words.append(word)
        word = word.encode('utf-8')
        hashes.append(bin(int(hashlib.md5(word).hexdigest(), 16))[2:].zfill(128))

    # Save the words and the hashes in txt files.
    with open('words.txt', 'w+') as word_file:
        word_file.write('\n'.join(words))
    with open('hashes.data', 'w+') as hash_file:
        hash_file.write('\n'.join(hashes)) 

def main():
    """ Calls all other functions. """
    parser = argparse.ArgumentParser()
    parser.add_argument('n_hashes', action='store', type=int)
    args = parser.parse_args()

    hash_generator(args.n_hashes)

if __name__ == "__main__":
    main()
