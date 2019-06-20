while [ "1" = "1" ]
do
	if [ ! -f "natapp.log" ];then
		#grep port
		cat natapp.log|grep -o cc:[0-9]*|grep -o [0-9]* > port
		cat port
		# update to web
		var=$(cat port)
		time=$(date "+%Y-%m-%d %H:%M:%S")
		echo extnal_port is $var
		rm natapp.log
	fi
	sleep 10s
done