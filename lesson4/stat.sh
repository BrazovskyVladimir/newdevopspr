#!/bin/bash
cat /proc/meminfo | grep MemFree | sed 's/MemFree/Память/g' | sed 's/ \{2,10\}/ /g' | awk '{print $1,$2/1024,$3}' | sed 's/kB/Мб/g'
cpuz=$(sar 1 5 | tail -1 | awk '{print $3+$4+$5+$6+$7}')
echo "Средняя загрузка: $cpuz"
ip addr show | grep inet | grep -v host | awk '{print $1,$2}' | sed 's/inet6/Адрес IPv6:/g' | sed 's/inet/Адрес IPv4:/g'