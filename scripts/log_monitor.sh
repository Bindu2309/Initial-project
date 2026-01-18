#!/bin/bash

LOG_FILE="logs/app.log"
REPORT="reports/report.txt"

echo "Log Monitoring Report - $(date)" > $REPORT
echo "---------------------------------" >> $REPORT

ERROR_COUNT=$(grep -i "error" $LOG_FILE | wc -l)
WARNING_COUNT=$(grep -i "warning" $LOG_FILE | wc -l)

echo "Errors   : $ERROR_COUNT" >> $REPORT
echo "Warnings : $WARNING_COUNT" >> $REPORT

if [ $ERROR_COUNT -gt 0 ]; then
  echo "STATUS: ❌ Issues Found" >> $REPORT
else
  echo "STATUS: ✅ Clean Logs" >> $REPORT
fi

cat $REPORT

