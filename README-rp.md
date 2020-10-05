### Connect with Raspberry Pi
```
ssh pi@$RASPBERRY_PI_IP
```

### Copy file from computer to Raspberry Pi
```
scp ~/path/to/file/file.jpg pi@$RASPBERRY_PI_IP:/home/pi/path
```

### Copy directory from computer to Raspberry Pi
```
rsync -rPz ~/path/to/directory pi@$RASPBERRY_PI_IP:/home/pi/path
```

### Set environment variable
```
export RASPBERRY_PI_IP=192.168.1.12
```

### Shutdown Raspberry Pi
```
sudo shutdown -h now
```

### Login without password
```
ssh-keygen
ssh-copy-id pi@RASPBERRY_PI_IP
```

### Flashing SD card tools
https://www.balena.io/etcher/

### Kill process
```
ps aux | grep app.py
```
Replace app.py with the name of your script. You will see a list of process numbers.

2. Kill each process number using the sudo kill -9 command. For example,
```
sudo kill -9 437
sudo kill -9 438
```

### Edit cron
```
mkdir logs
sudo crontab -e
```