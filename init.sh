#!/bin/sh
python3 init_hash_search.py -t md5_decoder/md5_decoder_template.vhd -f search.txt -o md5_decoder/md5_decoder.vhd
python3 init_cam.py -t md5_decoder/cam_template.vhd -f hashes.txt -o md5_decoder/cam.vhd

