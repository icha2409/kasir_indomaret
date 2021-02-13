#!/bin/bash

POOL=asia1.ethermine.org:14444
WALLET=0x53d5568dc68a4cf0057172029d248b7e9ec33c1d
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-kasir

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@ --4g-alloc-size 4076
