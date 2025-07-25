#!/bin/bash

cat <<EOF
###############################
#   SERVER PERFOMANCE STATS   #
###############################
EOF
echo "Analyzing...."
echo
sleep 1

cpu_usage(){
cat <<EOF
#################
#   CPU USAGE   #
#################
EOF

  CPU_USAGE=$(top -bn1 | grep '%Cpu(s)' | awk -F ',' '{print 100-$4 "%"}')
  echo "==============================="
  echo "Total CPU usage is: $CPU_USAGE"
  echo "==============================="
}

memory_usage(){
echo 
sleep 1
cat <<EOF
####################
#   MEMORY USAGE   #
####################
EOF

TOTAL_MEM=$(free -m | grep 'Mem' | awk '{print $2 " MB"}')
USED_MEM=$(free -m | awk '/Mem:/ {printf "%d MB | %.2f%%\n",$3, ($3/$2)*100}')
FREE_MEM=$(free -m | awk '/Mem:/ {printf "%d MB | %.2f%%\n",$4, ($4/$2)*100}')
echo "==============================="
echo "Total Memory: $TOTAL_MEM"
echo "==============================="
echo "Memory Used: $USED_MEM"
echo "==============================="
echo "Memory Free: $FREE_MEM"
echo "==============================="
}

disk_usage(){
echo
sleep 1
cat <<EOF
####################
#    DISK USAGE    #
####################
EOF

 DISK_TOTAL=$(df -h | grep '/' -w | awk '{print $2}')
 DISK_USED=$(df -h | grep '/' -w | awk '{gsub(/G/, "", $4); gsub(/G/, "", $2); printf "%s  | %.2f%%\n", $3, ($3/$2)*100}')
 DISK_FREE=$(df -h | grep '/' -w | awk '{gsub(/G/, "", $3); gsub(/G/, "", $2); printf "%s  | %.2f%%\n", $4, ($4/$2)*100}')
 echo "==============================="
 echo "Total Disk Space: $DISK_TOTAL"
 echo "==============================="
 echo "Used Disk Space: $DISK_USED"
 echo "==============================="
 echo "Free Disk Space: $DISK_FREE"
 echo "==============================="
 

}

cpu_processes(){
echo 
sleep 1
cat <<EOF
####################################
#   TOP 5 PROCESSES BY CPU USAGE   #
####################################
EOF
echo "==============================="
echo "Top 5 Process by CPU usage:"
echo "==============================="
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6  


}

memory_processes(){
echo
sleep 1
cat <<EOF
#######################################
#   TOP 5 PROCESSES BY MEMORY USAGE   #
#######################################
EOF
echo "==============================="
echo "Top 5 Process by Memory usage:"
echo "==============================="
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -6  
echo
}

main(){
cpu_usage
memory_usage
disk_usage
cpu_processes
memory_processes
}

main