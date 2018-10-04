#!/bin/bash
#
# This script starts four consensus and waits forever
#
echo $NODENBR
echo

case "$NODENBR" in
1)
  echo "case $NODENBR"
  screen -dmS node1 expect /opt/start_consensus_node.sh /opt/node/neo-cli/ wallet1.json one
  ;;
2)
  echo "case $NODENBR"
  screen -dmS node2 expect /opt/start_consensus_node.sh /opt/node/neo-cli/ wallet2.json two
  ;;
3)
  echo "case $NODENBR"
  screen -dmS node3 expect /opt/start_consensus_node.sh /opt/node/neo-cli/ wallet3.json three
  ;;
4)
  echo "case $NODENBR"
  screen -dmS node4 expect /opt/start_consensus_node.sh /opt/node/neo-cli/ wallet4.json four
  ;;
*)
  Message="No NODENBR environment variable !!"
  echo $Message
  ;;
esac

sleep infinity

