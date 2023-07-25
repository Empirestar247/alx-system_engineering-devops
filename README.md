Command line for the win

Background Context
CMD CHALLENGE is a pretty cool game challenging you on Bash skills. Everything is done via the command line and the questions are becoming increasingly complicated. It’s a good training to improve your command line skills!

This project is NOT mandatory at all. It is 100% optional. Doing any part of this project will add a project grade of over 100% to your average. Your score won’t get hurt if you don’t do it, but if your current average is greater than your score on this project, your average might go down. Have fun!

Requirements
General
A README.md file, at the root of the folder of the project, is mandatory
This project will be manually reviewed.
As each task is completed, the name of that task will turn green
Create a screenshot, showing that you completed the required levels
Push this screenshot with the right name to GitHub, in either the PNG or JPEG format
Specific
In addition to completing the project tasks and submitting the required screenshots to GitHub, you are also required to demonstrate the use of the SFTP (Secure File Transfer Protocol) command-line tool to move your local screenshots to the sandbox environment.
**Command line for the win**

File Search:

find: Search for files or directories (e.g., find /path/to/search -name filename.txt).
File Viewing and Manipulation:

head: View the beginning of a file (e.g., head file.txt).
tail: View the end of a file (e.g., tail file.txt).
grep: Search for a specific pattern in a file (e.g., grep "keyword" file.txt).
sed: Stream editor for text manipulation (e.g., sed 's/old_text/new_text/g' file.txt).
Process Management:

ps: Display information about active processes (e.g., ps aux).
kill: Terminate a process (e.g., kill PID, where PID is the process ID).
Disk Usage:

du: Show disk usage of files and directories (e.g., du -sh /path/to/directory).
SSH:

ssh: Connect to a remote server via SSH (e.g., ssh username@hostname).
Package Management:

apt (Ubuntu/Debian) / yum (CentOS/RHEL) / brew (macOS): Package managers for installing software.
System Updates:

apt update (Ubuntu/Debian) / yum update (CentOS/RHEL): Update the package lists and upgrade installed packages.
File Permissions:

chmod: Change file permissions (e.g., chmod 755 file.sh).
Environment Variables:

export: Set environment variables (e.g., export MY_VARIABLE=value).
Networking:

nc: Netcat for networking tasks (e.g., nc -vz google.com 80 to check if a server is listening on port 80).
User Management:

useradd (Linux) / net user (Windows): Add new users.
Task Scheduling:

cron (Linux/macOS) / Task Scheduler (Windows): Schedule tasks to run at specified intervals.
Disk Management:

df: Display disk space usage (e.g., df -h for human-readable format).
fdisk (Linux) / diskpart (Windows): Partition management.
**Process Backgrounding:**

bg: Move a process to the background (e.g., bg %1).
fg: Bring a background process to the foreground (e.g., fg %1).

**File Transfer:**
scp: Securely copy files between hosts (e.g., scp file.txt remoteuser@remotehost:/path/to/destination).

**Disk Usage Statistics:**
ncdu: NCurses Disk Usage - a disk usage analyzer with an interactive interface.

Text Sorting and Unique Filtering:
sort: Sort lines of text (e.g., sort file.txt).
uniq: Filter adjacent duplicate lines (e.g., sort file.txt | uniq).

**Network Diagnostics:**

traceroute: Trace the route packets take to a network host (e.g., traceroute google.com).
netstat: Network statistics and connection information (e.g., netstat -an).
Remote Desktop Protocol (RDP) Connection:
rdesktop (Linux): Connect to a remote Windows desktop (e.g., rdesktop -u username -p password host).

		 **System Information:**
lshw: List hardware details (e.g., sudo lshw).
Memory Management:
free: Display memory usage (e.g., free -h for human-readable format).
top (Linux) / Task Manager (Windows): Monitor real-time system resource usage.
**Process Prioritization:**
nice: Set the priority of a command (e.g., nice -n 10 command).
Find and Replace in Files:
grep with sed: Search and replace text in files (e.g., grep -rl 'old_text' /path/to/search | xargs sed -i 's/old_text/new_text/g').


Disk Partition Information:
lsblk: List block devices and their partitions.
System Information:
uname: Display system information (e.g., uname -r to show the kernel version).
Memory Information:
vmstat: Report virtual memory statistics (e.g., vmstat 1 for real-time updates).
pmap: Display memory usage of a process (e.g., pmap PID).
File Transfer Protocol (FTP) Connection:
ftp: Connect to an FTP server (e.g., ftp ftp.example.com).
Disk Usage Visualization:
ncdu: NCurses Disk Usage - an interactive disk usage analyzer with a text-based user interface.
Network Interface Configuration:
ip: Display and manipulate network interface settings (e.g., ip addr show).
User and Group Information:
id: Display user and group information for the current user (e.g., id).
File Type Identification:
file: Determine file type (e.g., file filename).
History of Executed Commands:
history: Show the list of previously executed commands.
Date and Time:
date: Display the current date and time (e.g., date "+%Y-%m-%d %H:%M:%S").
Remote Shell:
ssh: Secure shell client for remote access (e.g., ssh user@hostname).
HTTP Request Testing:
curl: Send HTTP requests and display the response (e.g., curl https://example.com).
IP Address Information:
ipconfig (Windows) / ifconfig (Linux/macOS): Display IP configuration of network interfaces.
Process Resource Monitoring:
htop (Linux/macOS): Interactive process viewer (similar to top but more user-friendly).
Disk I/O Statistics:
iostat: Report CPU and input/output statistics (e.g., iostat -d for disk statistics).
System Reboot/Shutdown:
reboot: Reboot the system (requires appropriate permissions).
shutdown: Shutdown the system (e.g., shutdown -h now to shut down immediately).
System Locale and Language Settings:
locale: Display locale-specific information (e.g., locale -a to list available locales).
Text Processing and Column Manipulation:
awk: Powerful text processing tool (e.g., awk '{print $2}' file.txt to print the second column).



**Print the current working directory**:

pwd
echo $PWD
dirs
pwd dir
pwd current working directory
echo $(pwd)
pwd ls
pwd hello world
pwd "hello world"
pwd echo
pwd "working directory"
pwd working directory
echo "$PWD"
pwd print
printf $PWD
pwd command
pwd "current working directory"
pwd .
echo | pwd
pwd [-LP]
pwd\
pwd home
pwd /home
pwd c
dirs -p
"pwd"
pwd root
pwd $
pwd p
pwd -L
echo `pwd`
pwd working
printf "$PWD"
pwd C
pwd directory
pwd -P
printf "${PWD}"
pwd command_line_for_the_win
pwd /var/challenges/create_directory
pwd \
pwd 1s
echo &pwd
pwd "home"
pwd C\Program Files
'pwd'
pwd P
pwd dirs
realpath ./
echo $(pwd);
pwd -LP

**List names of all the files in the current directory, one file per line.**

ls
ls -1
ls -A
ls *
ls -h
ls -L
ls .
ls /var/challenges/list_files
ls | cat
dir -1
ls -r
ls $pwd
ls -c
ls -p
ls -F
ls -p | grep -v /
ls ./
for f in *;do echo "$f";done
find *
ls $PWD
ls -l | awk '{print $9}'
ls -v
ls -t
ls\
ls -S
ls -A1
ls | more
ls \
ls | sort
for FILE in *; do echo $FILE; done
ls -b
ls -H
ls -q
ls|cat
ls -1A
printf '%s\n' *
for f in *; do echo $f; done
ls -ch
ls -1 .
ls | tr " " "\n"
for f in *;do echo $f;done
for i in *; do echo $i; done
ls -C1
for f in *; do echo "$f";done
ls -N
ls -AA
ls ; echo ""
ls | tr ' ' '\n'
ls |cat
find . -type f| cut -d "/" -f2

*

