echo 'test'

#Catch time zone questions to install noninteractively
DEBIAN_FRONTEND=noninteractive
apt-get update
ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime
apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata

apt-get -y install mono-complete

#chmod +x /root/SyncroSim/SyncroSim.Console.exe

#mono /root/SyncroSim/SyncroSim.Console.exe 

#mono /root/SyncroSim/SyncroSim.Console.exe --list --help

#Console reference
#https://docs.syncrosim.com/reference/console.html