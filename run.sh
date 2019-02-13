#!/bin/bash

nim -d:ssl --dynlibOverride:ssl --passL:-lcrypto --passL:-lssl c -r -d:nimDebugDlOpen main.nim