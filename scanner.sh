#!/bin/bash
ServersFile="servers.txt"
ReportFile="report.txt"
echo "-----------------------------">$ReportFile
while read -r line
do
    arr=($line)
    name=${arr[0]}
    ip=${arr[1]}
    echo $name>>$ReportFile
    echo $ip>>$ReportFile
    echo $ip
    nmap -r $ip>>$ReportFile 2>/dev/null
    echo "-----------------------------">>$ReportFile
done < $ServersFile
