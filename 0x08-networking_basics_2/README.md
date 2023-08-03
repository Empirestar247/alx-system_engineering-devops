0x08. Networking basics #1

localhost/127.0.0.1:

localhost is a hostname that points to the local loopback address, which is represented by the IP address 127.0.0.1.
The loopback address is a special IP address that refers to the current device itself, allowing it to communicate with itself over the network.
When a program on your computer sends data to localhost or 127.0.0.1, it is sending the data to the network stack on the same device.

0.0.0.0:

0.0.0.0 is a special IP address used to represent all available network interfaces on the host machine.
When a server or service binds to 0.0.0.0, it listens on all active network interfaces, meaning it will accept connections from any available network interface on the system.

/etc/hosts:

/etc/hosts is a plain-text file on Unix-like operating systems that maps hostnames to IP addresses.
It is a local DNS (Domain Name System) lookup file that allows you to specify IP address mappings for specific hostnames without the need for an external DNS server.
When your computer tries to resolve a hostname, it first checks the /etc/hosts file, and if the hostname is listed there, it uses the corresponding IP address to connect.

Display Active Network Interfaces:
To display your machine's active network interfaces, you can use the ifconfig command on Linux or macOS, or the ipconfig command on Windows.

On Linux or macOS:
Open a terminal and run the following command:

bash
Copy code
ifconfig


Or, you can use the more modern ip command (which is more common in newer Linux distributions):

bash
Copy code
ip address show


On Windows:
Open a Command Prompt (cmd) or PowerShell and run the following command:

bash
Copy code
ipconfig


This will display information about all active network interfaces on your machine, including their IP addresses, subnet masks, and other relevant details.
