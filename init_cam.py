#!/usr/bin/env python
""" Creates a CAM memory component using a template file and a list of hashes for initialization."""
import argparse


def make_cam(template_file_path, hash_file_path, output_file_path):
    """ Creates a new CAM vhdl file and adds neccessary lines for CAM initialization.""" 
    with open(output_file_path, 'w+') as cam_file:
        with open(template_file_path, 'r') as cam_template_file:
            template_lines = cam_template_file.readlines()
            for line in template_lines:
                # Write the initialization lines where the cam_init tag is found.
                if (not line.startswith('--<cam_init>')):
                    cam_file.write(line)
                else:
                    with open(hash_file_path, 'r') as hash_file:
                        hash_file_lines = hash_file.readlines()
                        n_lines = len(hash_file_lines)
                        for i, binary_hash in enumerate(hash_file_lines):
                            if not (i == n_lines-1):
                            	cam_file.write('cam(' + str(i) + ') <= ' + '"' 
                                               + binary_hash[:-1] + '";\n')
                            else:
                            	cam_file.write('cam(' + str(i) + ') <= ' + '"' 
                                               + binary_hash + '";\n')
                        cam_file.write('\n\n')
    
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
