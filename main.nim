import strformat, typetraits, json
import blockchain

var nimchain = new BlockChain
nimchain.init()

var genesis_block = nimchain.blocks[0]
echo "Genesis block: ", genesis_block.pretty, "\n"

echo "============================================="
discard nimchain.create_new_tx(sender="raz", recipient="test", amount=100)
echo "Add tx: ", nimchain.transactions[0].pretty
discard nimchain.create_new_tx(sender="raz", recipient="zar", amount=25)
echo "Add tx: ", nimchain.transactions[1].pretty, "\n"

var nextProof = nimchain.pow(genesis_block["proof"].getInt)
discard nimchain.create_new_block(proof=nextProof)
echo "Block 2: ", nimchain.blocks[1].pretty, "\n"

echo "============================================="
nextProof = nimchain.pow(nimchain.blocks[1]["proof"].getInt)
discard nimchain.create_new_block(proof=nextProof)
echo "Block 3: ", nimchain.blocks[2].pretty, "\n"

echo "============================================="
nextProof = nimchain.pow(nimchain.blocks[2]["proof"].getInt)
discard nimchain.create_new_block(proof=nextProof)
echo "Block 4: ", nimchain.blocks[3].pretty