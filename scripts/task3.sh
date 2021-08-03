
hostname=$(hostname)
cpu_cores_number=$(cat /proc/cpuinfo | grep "cpu cores" | uniq)
total_memory=$(grep MemTotal /proc/meminfo)
total_disk=$(dmesg | grep blocks)

filename=stats.txt
folder=../tests/task3

mkdir -p $folder && cd $folder

echo -en "$hostname\n$cpu_cores_number\n$total_memory\n$total_disk\n" >> $filename

