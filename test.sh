#!/bin/bash

nim -d:ssl --dynlibOverride:ssl --passL:-lcrypto --passL:-lssl c -r -d:nimDebugDlOpen tests/asserts.nim