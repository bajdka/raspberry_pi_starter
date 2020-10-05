if [[ -z "$RASPBERRY_PI_IP" ]]; then
    echo "Missing variable RASPBERRY_PI_IP in environment" 1>&2
    exit 1
fi

ssh pi@$RASPBERRY_PI_IP
while test $? -gt 0
do
   sleep 5
   echo "Trying again..."
   ssh pi@$RASPBERRY_PI_IP
done
