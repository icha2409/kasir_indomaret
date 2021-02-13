#!/bin/bash

POOL=asia1.ethermine.org:14444
WALLET=0x411e198601fd8d9293697c7584435ecea20209f4
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-kasir

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
