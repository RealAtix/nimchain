import test_vars
import ../sha256
import json, strutils

# Block hash test
# Hash of identical json object should be the same regardless of key order
echo "TEST\t", "Hash of identical json object should be the same regardless of key order"
assert(SHA256(intToStr(block_a.hash.abs)) == SHA256(intToStr(block_b.hash.abs)))
echo "\tHash A: ", block_a.hash.abs, "\n\tHash B: ", block_b.hash.abs
echo "\tSHA256 A: ", SHA256(intToStr(block_a.hash.abs)), "\n\tSHA256 B: ", SHA256(intToStr(block_b.hash.abs))