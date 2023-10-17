## Firewall
In this project, I've applied ufw (Uncomplicated Firewall) to set up firewall configurations for my web servers.

## Introduction
Welcome to SecureWeb, a powerful security tool for web applications! In today's digital age, web security is of paramount importance. SecureWeb helps you protect your web applications by implementing cutting-edge firewall rules and DevOps practices.

## Firewall
### A firewall is your digital fortress, and SecureWeb acts as your guardian. It employs a combination of network and host-based firewall rules to filter incoming and outgoing traffic, ensuring that only authorized traffic reaches your web applications. By understanding the significance of firewalls, you can take a proactive approach to web security.

## DevOps
DevOps is the heartbeat of SecureWeb. We believe in seamless integration of development and operations to deliver secure and high-quality web applications. SecureWeb incorporates DevOps principles to automate deployment, manage configurations, and ensure continuous monitoring, all of which contribute to a more secure web environment.

## SysAdmin
System Administrators (SysAdmins) are the unsung heroes who keep your systems running smoothly. SecureWeb recognizes their critical role in maintaining system security. This tool simplifies their tasks by providing real-time security insights and easy-to-implement security measures, helping SysAdmins keep systems secure and resilient.

## Security
In today's threat landscape, security is non-negotiable. SecureWeb emphasizes the importance of web security, addressing common security challenges and providing a shield against threats. Our commitment to security goes beyond a firewall; we offer a comprehensive security solution to protect your web applications from vulnerabilities and attacks.


## Background Context
Your servers without a firewall…


![Background Context](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/155/holbertonschool-firewall.gif)

![firewall](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/284/V1HjQ1Y.png)

## Tasks
0. Block all incoming traffic but

Let’s install the ufw firewall and setup a few rules on web-01.

Requirements:

The requirements below must be applied to web-01 (feel free to do it on lb-01 and web-02, but it won’t be checked)
Configure ufw so that it blocks all incoming traffic, except the following TCP ports:
22 (SSH)
443 (HTTPS SSL)
80 (HTTP)
Share the ufw commands that you used in your answer file

## 1. Port forwarding

Firewalls can not only filter requests, they can also forward them.

Requirements:

Configure web-01 so that its firewall redirects port 8080/TCP to port 80/TCP.
Your answer file should be a copy of the ufw configuration file that you modified to make this happen
Terminal in web-01:

## 100-port_forwarding
~ File containing configuration of web-01 so that its firewall redirects port 8080/TCP to por 80/TCP

## AUTHOR by Esther Ejimofor
