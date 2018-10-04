#!/bin/bash
#
# This script starts four consensus and waits forever
#
echo $NODENBR
echo

case $NODENBR in
1)
  screen -dmS node1 expect /opt/start_consensus_node.sh /opt/node/neo-cli/ wallet1.json one
  ;;
2)
  screen -dmS node2 expect /opt/start_consensus_node.sh /opt/node2/neo-cli/ wallet2.json two
  ;;
3)
  screen -dmS node3 expect /opt/start_consensus_node.sh /opt/node3/neo-cli/ wallet3.json three
  ;;
4)
  screen -dmS node4 expect /opt/start_consensus_node.sh /opt/node4/neo-cli/ wallet4.json four
  ;;
*)
  Message="No NODENBR environment variable !!"
  ;;
esac

sleep infinity

