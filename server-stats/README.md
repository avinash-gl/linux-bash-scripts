# 📊 System Performance Monitor Script
This bash script provides a quick overview of system's performance. It collects key metrics related to CPU, memory, disk, and top resource-consuming processes.

## Features 

<ul>
  <li>Total CPU usage</li>
  <li>Total memory usage (Free vs Used including percentage)</li>
  <li>Total disk usage (Free vs Used including percentage)</li>
  <li>Top 5 processes by CPU usage</li>
  <li>Top 5 processes by memory usage</li>
</ul>

## Usage
<ol>
<li>Make the Script Executable</li>

```bash
chmod +x server-stats.sh
```
<li>Run the Script</li>

```bash
./server-stats.sh
```
</ol>

## Sample Output

```bash
###############################
#   SERVER PERFOMANCE STATS   #
###############################
Analyzing....

#################
#   CPU USAGE   #
#################
===============================
Total CPU usage is: 11.6%
===============================

####################
#   MEMORY USAGE   #
####################
===============================
Total Memory: 11789 MB
===============================
Memory Used: 4009 MB | 34.01%
===============================
Memory Free: 2642 MB | 22.41%
===============================

####################
#    DISK USAGE    #
####################
===============================
Total Disk Space: 475G
===============================
Used Disk Space: 19G  | 4.00%
===============================
Free Disk Space: 455G  | 95.79%
===============================

####################################
#   TOP 5 PROCESSES BY CPU USAGE   #
####################################
===============================
Top 5 Process by CPU usage:
===============================
    PID    PPID CMD                         %MEM %CPU
    864     820 Hyprland                     1.3  0.9
   2466       1 /usr/lib/firefox/firefox     5.6  0.8
   3647    2545 /usr/lib/firefox/firefox -c 10.6  0.8
 110901       1 waybar                       0.7  0.7
  15306   15248 /usr/lib/electron35/electro  3.5  0.6

#######################################
#   TOP 5 PROCESSES BY MEMORY USAGE   #
#######################################
===============================
Top 5 Process by Memory usage:
===============================
    PID    PPID CMD                         %MEM %CPU
   3647    2545 /usr/lib/firefox/firefox -c 10.6  0.8
   2466       1 /usr/lib/firefox/firefox     5.6  0.8
  15306   15248 /usr/lib/electron35/electro  3.5  0.6
   9434    2545 /usr/lib/firefox/firefox -c  2.9  0.0
   ```
