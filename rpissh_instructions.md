This is a tutorial to set up easy SSH access to your Raspberry Pi.

1. You will need an Ethernet cable in order to connect your Pi Ethernet port to your computer's Ethernet port.

2. In your computer's wired connection settings under IPV4, allow sharing with another computer. This will allow your raspberry pi to access the internet through your computer, giving it an IP address.

3. Using a monitor and a keyboard, enable ssh on the raspberry Pi:

`sudo systemctl enable ssh
sudo systemctl start ssh`

It is possible to change your hostname:

`sudo hostname <new name>`

To view your hostname, run:

`hostname`

This will be used to ssh in.

4. Download this utility and make it executable:

`chmod +x rpissh.sh`

5. Add an alias to your .bashrc file.

`vim ~/.bashrc`

Insert this line at the end, or wherever you like to keep custom aliases:

`alias rpi='<path to rpissh.sh>'`

for example:

`alias rpi='~/bin/rpissh.sh'`

Exit vim, and update your bash environment.

`. ~/.bashrc`

Your password, unless you have changed it, is raspberry.

6. Optional: Set up an ssh key on your computer for your Pi for faster access and higher security.

Conclusion:

Now you can connect your Raspberry Pi to your laptop with your Ethernet cable anywhere, and ssh in quickly from any directory in your filesystem.

`rpi <hostname>`

If you would like, you could hard code your hostname in the place of the variable `$1` and remove the usage case for faster performance, shortening the command to:

`rpi`

Note: If you have changed the username on your raspberry pi to something other than "pi", you will have to modify this utility on the ssh line.
