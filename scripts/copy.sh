if [[ -z "$RASPBERRY_PI_IP" ]]; then
    echo "Missing variable RASPBERRY_PI_IP in environment" 1>&2
    exit 1
fi

rsync -rPz ~/Documents/malinka/. --exclude node_modules --exclude telegram/__pycache__ pi@$RASPBERRY_PI_IP:/home/pi/Projects 

