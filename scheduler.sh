for bd in sda sdb sdc sdd ; do
	if [ -e /sys/block/$bd/queue/scheduler ] ; then
		echo deadline > /sys/block/$bd/queue/scheduler
		echo dev $bd set to deadline scheduler
	fi
	if [ -e /sys/block/$bd/queue/iosched/write_expire ] ; then
		echo 100 > /sys/block/$bd/queue/iosched/write_expire 
		echo dev $bd write_expire set to `cat /sys/block/$bd/queue/iosched/write_expire`
		echo 150 > /sys/block/$bd/queue/iosched/read_expire 
		echo dev $bd read_expire set to `cat /sys/block/$bd/queue/iosched/read_expire`
	fi
done
