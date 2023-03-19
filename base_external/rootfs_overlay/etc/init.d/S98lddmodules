#!/bin/sh

case "$1" in 
	start)
		echo 'Starting scull and misc-modules'
		/usr/bin/module_load faulty
		/usr/bin/scull_load
                /usr/bin/aesdchar_load
		modprobe hello
		;;
	stop)
		echo 'Stopping scull and misc-modules'
		/usr/bin/module_unload faulty
		/usr/bin/scull_unload
		/usr/bin/aesdchar_unload
		rmmod hello
		;;
	*)
	echo "Usage: $0 {start|stop} - to load and unload kernel modules"
	exit 1
esac

exit 0
