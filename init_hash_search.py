#!/usr/bin/env python
""" Creates the md5_decoder main entity vhdl file adding the hashes to search for. """
import argparse


def make_cam(template_file_path, hash_file_path, output_file_path):
    """ Creates a new md5_decoder vhdl file and adds neccessary lines for hash search.""" 
    with open(output_file_path, 'w+') as md5_decoder_file:
        with open(template_file_path, 'r') as md5_decoder_template_file:
            template_lines = md5_decoder_template_file.readlines()
            for line in template_lines:
                # Write the hash search lines where the cam_init tag is found.
                if (not line.startswith('--<hash_search_init>')):
                    md5_decoder_file.write(line)
                else:
                    with open(hash_file_path, 'r') as hash_file:
                        hash_file_lines = hash_file.readlines()
                        n_lines = len(hash_file_lines)
                        for i, binary_hash in enumerate(hash_file_lines):
                            #if not (i == n_lines-1):
                            md5_decoder_file.write('user_hash' + str(i+1) + ' <= ' + '"' 
                                                   + binary_hash[:-1] + '";\n')
                            #else:
                            	#md5_decoder_file.write('user_hash' + str(i) + ' <= ' + '"' 
                                               #+ binary_hash + '";\n')
                        md5_decoder_file.write('\n\n')
    
def main():
    """ Calls all other funtions. """
    # Parser command line arguments.
    parser = argparse.ArgumentParser()
    parser.add_argument('-t', dest='template_file_path', action='store')
    parser.add_argument('-f', dest='hash_file_path', action='store')
    parser.add_argument('-o', dest='output_file_path', action='store')
    args = parser.parse_args() 

    make_cam(args.template_file_path, args.hash_file_path, args.output_file_path)

if __name__ == "__main__":
    main()
