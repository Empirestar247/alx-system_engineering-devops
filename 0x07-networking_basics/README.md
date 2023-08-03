OSI Model:

The OSI (Open Systems Interconnection) model is a conceptual framework that standardizes the functions of a telecommunication or computing system into seven distinct layers.
It has seven layers: Physical, Data Link, Network, Transport, Session, Presentation, and Application.
The layers are organized in a hierarchical manner, with each layer providing specific services to the layer above it and utilizing the services of the layer below it.

LAN (Local Area Network):

A LAN is a network that connects computers and devices in a limited geographical area, such as a home, office, or building.
It is used for local communication and resource sharing among devices within a close proximity.
Typical geographical size: Usually spans a few meters to a few kilometers.

WAN (Wide Area Network):

A WAN is a network that covers a large geographical area, often connecting multiple LANs or other networks across cities, states, or countries.
It is used for long-distance communication and data transmission between geographically separated locations.
Typical geographical size: Spans over a large area, potentially across countries.

Internet:

The Internet is a global network of interconnected computers and networks, allowing worldwide communication and access to information and services.
It is the largest and most well-known example of a WAN.

IP Address:

An IP address (Internet Protocol address) is a numerical label assigned to each device (computer, smartphone, router, etc.) connected to a network that uses the Internet Protocol for communication.
It serves as an identifier, allowing devices to find and communicate with each other over the internet.

Types of IP Addresses:

Private IP Address: Used within a private network and not directly accessible from the internet. Ranges of private IP addresses include:

IPv4 Private Addresses: 10.0.0.0 to 10.255.255.255, 172.16.0.0 to 172.31.255.255, 192.168.0.0 to 192.168.255.255.
IPv6 Private Addresses: Addresses starting with fd (e.g., fd00::/8).

Public IP Address: Unique globally routable IP addresses assigned to devices directly connected to the internet, allowing them to be accessible from anywhere.

Localhost:

Localhost refers to the loopback network interface, typically identified by the IP address 127.0.0.1 for IPv4 or ::1 for IPv6.
It is used to access the network services running on the same device, allowing a device to communicate with itself.

Subnet:

A subnet is a portion of a larger network that shares a common network address. It allows network administrators to divide a network into smaller logical segments for various purposes, such as improving performance and security.

IPv6 Creation:

IPv6 (Internet Protocol version 6) was created to address the exhaustion of IPv4 addresses. IPv4, with its 32-bit address space, had a limited number of unique addresses, which became inadequate with the growing number of internet-connected devices.

TCP and UDP:

TCP (Transmission Control Protocol) and UDP (User Datagram Protocol) are two widely used transport layer protocols within the Internet Protocol suite.
TCP provides reliable, connection-oriented data transfer, ensuring that data packets are delivered in order and without loss.
UDP provides unreliable, connectionless data transfer, where packets may be lost or delivered out of order, but it is more lightweight and suitable for applications that can tolerate some data loss.

Port:

A port is a numerical identifier used to distinguish different communication channels on a single IP address.
It enables multiple applications and services to run simultaneously on a device by directing network traffic to the appropriate application.

Port Numbers for SSH, HTTP, and HTTPS:

SSH (Secure Shell): Port 22
HTTP (Hypertext Transfer Protocol): Port 80
HTTPS (HTTP Secure): Port 443

Tool/Protocol to Check Device Connectivity:

Ping is often used to check if a device is connected to a network. Ping uses the ICMP (Internet Control Message Protocol) to send echo requests to the target device and waits for an echo reply to confirm the connectivity.
