while [ "1" = "1" ]
do
#grep port
cat /natapp.log|grep -o cc:[0-9]*|sed 's/cc:/g' > port
cat port
# update to web
var=$(cat /port)
echo extnal_port is ${var}
rm /natapp.log
sleep 10s
done