#!/bin/bash

set -e

gcc -o SHA256 SHA256.c
./SHA256 testFile1.txt
echo ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad
./SHA256 testFile2.txt
echo e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
./SHA256 testFile3.txt
echo 248d6a61d20638b8e5c026930c3e6039a33ce45964ff2167f6ecedd419db06c1
