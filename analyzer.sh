#!/bin/bash

LOG_DIR="/var/log/bootstrap.log"

date_log=$(date +"%Y-%m-%d")


REPORT="report_${date_log}.txt"

echo "$REPORT"

wc -l $LOG_DIR
wc -w $LOG_DIR

echo "Fazendo analise do arquivo $LOG_DIR ..."

echo "=========================================="

grep -c -i "Setting up" $LOG_DIR

grep -i "Setting up" $LOG_DIR

grep -Ei "error" $LOG_DIR


#=====

echo "RELATORIO DE BOOTSTRAP.LOG" >> $REPORT
echo "Date : $(date)" >> $REPORT