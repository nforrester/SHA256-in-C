#!/bin/bash

set -e

gcc -Wall -Wextra -Wpedantic -Werror -o SHA256 SHA256.c
diff <(echo ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad) <(./SHA256 --quiet testFile1.txt)
diff <(echo e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855) <(./SHA256 --quiet testFile2.txt)
diff <(echo 248d6a61d20638b8e5c026930c3e6039a33ce45964ff2167f6ecedd419db06c1) <(./SHA256 --quiet testFile3.txt)
echo TEST PASSED
