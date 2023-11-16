#!/bin/sh 
ESESC_BIN=${1:-../main/esesc}
export ESESC_ReportFile="abc"
export ESESC_BenchName="./bins/test ./data/"
if [ -f $ESESC_BIN ]; then
  $ESESC_BIN 
else
  $ESESC_BenchName 
fi
exit 0
