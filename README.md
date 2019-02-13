# NimChain

> Trying out the language Nim by writing a very simple single node blockchain using a simple PoW algorithm

## Compile and run

```bash
# Compile and run the main program (or use run.sh)
nim -d:ssl --dynlibOverride:ssl --passL:-lcrypto --passL:-lssl c -r -d:nimDebugDlOpen main.nim

# Compile and run the tests (or use test.sh)
nim -d:ssl --dynlibOverride:ssl --passL:-lcrypto --passL:-lssl c -r -d:nimDebugDlOpen tests/asserts.nim

# To only compile, remove the -r flag
```

[Nim lang documentation](https://nim-lang.org/documentation.html)