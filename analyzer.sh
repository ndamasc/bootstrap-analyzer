#!/bin/bash

LOG_FILE="/var/log/bootstrap.log"

DATE_LOG=$(date +"%d-%m-%Y")
REPORT_FILE="relatorio_${DATE_LOG}.txt"


echo "Analisando $LOG_FILE..."
echo "===============================" > $REPORT_FILE
echo "RELATORIO DO BOOTSTRAP.LOG" >> $REPORT_FILE
echo "Data: $(date)" >> $REPORT_FILE

TOTAL=$(grep -c "Setting up" $LOG_FILE)
echo "Total de pacotes configurados: $TOTAL" >> $REPORT_FILE

echo -e "\nPacotes configurados:" >> $REPORT_FILE
grep "Setting up" $LOG_FILE | cut -d' ' -f3 >> $REPORT_FILE

echo -e "\nErros e avisos encontrados:" >> $REPORT_FILE
grep -Ei "error|fail|warning" $LOG_FILE >> $REPORT_FILE

echo -e "Analise finalizada! Relatório $REPORT_FILE salvo."