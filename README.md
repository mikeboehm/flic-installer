# Installer and execution scripts for Flic linux client
https://github.com/50ButtonsEach/fliclib-linux-dist

**I currently cannot get it to work as I experience a constant connect/disconnect loop that others have reporting here https://github.com/50ButtonsEach/fliclib-linux-dist/issues/41**

### Instructions
	git clone https://github.com/mikeboehm/flic-installer.git
	cd flic-installer
	sh 1-installer.sh
	
**After the Pi reboots, log in with three separate sessions and run one of the scripts in each**

	sh ~/flic-installer/session1.sh
	sh ~/flic-installer/session2.sh
	sh ~/flic-installer/session3.sh
	
**The third session is the Flic client which is used to discover and connect to your Flic button**

If this is the first time you connect your Flic, do the following:

	startScan
Press your button and wait for button discovered message

	stopScan

Press and hold the button for 8 sec and then enter

	connect [MAC address of button]
 
If you have previously connected your Flic, it should show up if you enter: 

	list
 
This may take a few tries as my button never glows in public mode. You know it was successfull when is says connected and start track button presses..
exit flic with ctrl-C


