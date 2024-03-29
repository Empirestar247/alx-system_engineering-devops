## Project Topic:0x0C-web_server

## During this project, I gained knowledge about the functioning of web servers and had the opportunity to work with one. ALX provided me with a personal server for practical experience. I acquired skills in utilizing tools like scp and Fabric to transfer files to my server efficiently. Moreover, I successfully performed initial server configuration using Nginx.

## Table of Contents
- [Concepts](#concepts)
- [Background Context](#background-context)
- [Project Requirements](#project-requirements)
- [Learning Objectives](#learning-objectives)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [License](#license)

## Concepts

### Web Server
- **Main Role**: A web server's primary role is to serve web content to clients over the internet or an intranet. It acts as a bridge between client devices (e.g., web browsers) and web applications.

### Child Process
- **Definition**: A child process is a subprocess created by a parent process. In the context of this project, it refers to a secondary process spawned by the primary web server process. Child processes are used to handle incoming client requests efficiently.

### Parent and Child Processes
- **Purpose**: Web servers usually have a parent process and multiple child processes. The parent process (master) manages and controls the child processes (workers). This architecture allows web servers to handle multiple simultaneous requests, making them scalable and robust.

### Main HTTP Requests
- **HTTP Requests**: HTTP (Hypertext Transfer Protocol) defines various request methods used in web communication. The primary HTTP requests include:
  - **GET**: Used to request data from a server.
  - **POST**: Used to submit data to be processed by the server.
  - **PUT**: Used to update a resource on the server.
  - **DELETE**: Used to request the removal of a resource.

### DNS (Domain Name System)
- **DNS Role**: DNS (Domain Name System) translates human-readable domain names (e.g., www.example.com) into IP addresses. It acts as the internet's address book, allowing users to access websites using names instead of numerical IP addresses.

- **DNS Record Types**: DNS stores various types of records to map domain names to specific resources. Common DNS record types include:
  - **A (Address)**: Maps a domain name to an IPv4 address.
  - **CNAME (Canonical Name)**: Creates an alias for a domain name, redirecting it to another domain.
  - **TXT (Text)**: Stores text-based information associated with a domain.
  - **MX (Mail Exchange)**: Specifies mail servers responsible for receiving email messages for a domain.

## Background Context

![Web server](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/266/8Gu52Qv.png)

In this project, tasks are graded based on two key aspects:

1. **Web Server Configuration**: Ensuring the web-01 server is configured according to the specified requirements. This includes setting up software, security, and performance optimizations.

2. **Bash Script Automation**: Creating Bash scripts that automate the configuration of an Ubuntu machine (web-01). The objective is to perform tasks without human intervention, achieving efficiency and scalability.

Automation is a key focus in this project, as it aligns with DevOps and SysAdmin practices, where repetitive tasks are automated to save time and reduce human error.

## Project Requirements

- **Editors**: You may use vi, vim, or emacs for editing. These are common text editors available in Unix-like systems.

- **Operating System**: All your files should be compatible with Ubuntu 16.04 LTS, a long-term support version known for stability.

- **File Formatting**: Ensure all files end with a new line to adhere to coding standards.

- **README**: Include a README.md file at the project's root to explain project details. A well-structured README is essential for users and contributors.

- **Executable Scripts**: All Bash script files must be executable to run without issues.

- **Shellcheck**: Your Bash scripts must pass Shellcheck (version 0.3.7) without any errors. Shellcheck is a tool that analyzes shell scripts for common issues.

- **Script Header**: Start each Bash script with `#!/usr/bin/env bash` to specify the shell interpreter. Additionally, include a comment explaining the script's purpose for clarity and documentation.

- **No systemctl**: Do not use systemctl for restarting processes. This constraint encourages alternative methods for process management and automation.


## Tasks
0. Transfer a file to your server
## Write a Bash script that transfers a file from our client to a server:

Requirements:

Accepts 4 parameters
The path to the file to be transferred
The IP of the server we want to transfer the file to
The username scp connects with
The path to the SSH private key that scp uses
Display Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY if less than 3 parameters passed
scp must transfer the file to the user home directory ~/
Strict host key checking must be disabled when using scp

1. Install nginx web server

## Requirements:

Install nginx on your web-01
server
Nginx should be listening on port 80
When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Hello World!
As an answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements (this script will be run on the server itself)
You can’t use systemctl for restarting nginx


2. Setup a domain name

## Requirement:

provide the domain name only (example: foobar.tech), no subdomain (example: www.foobar.tech)
configure your DNS records with an A entry so that your root domain points to your web-01 IP address Warning: the propagation of your records can take time (~1-2 hours)
go to your profile and enter your domain in the Project website url field

3. Redirection

## Requirements:

The redirection must be a “301 Moved Permanently”
You answer file should be a Bash script containing commands to automatically configure a Ubuntu machine to respect above requirements
Using what you did with 1-install_nginx_web_server, write 3-redirection so that it configures a brand new Ubuntu machine to the requirements asked in this task

4. Not found page 404

## Requirements:

The page must return an HTTP 404 error code
The page must contain the string Ceci n'est pas une page
Using what you did with 3-redirection, write 4-not_found_page_404 so that it configures a brand new Ubuntu machine to the requirements asked in this task

5. Install Nginx web server (w/ Puppet)

## Requirements:

Nginx should be listening on port 80
When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Hello World!
The redirection must be a “301 Moved Permanently”
Your answer file should be a Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements


Upon completing this project, you should be able to explain the following concepts without relying on external sources:

### General
- The main role of a web server and its significance in web communication.

- The definition of a child process and why web servers typically employ parent and child processes for handling requests.

- The primary HTTP requests used in web communication and their specific purposes.

### DNS
- What DNS stands for and its fundamental role in translating domain names into IP addresses.

- The various DNS record types, including A, CNAME, TXT, and MX, and their specific use cases.

## Getting Started

To begin this project:

1. Review the provided resources, including documentation on web server configuration, DNS, HTTP, child processes, and more. Understanding these concepts is crucial for successful completion.

2. Familiarize yourself with the project's concepts and requirements, as they will guide your work throughout the project.

## Usage

This project involves creating Bash scripts that automate tasks related to web server configuration, DevOps practices, and SysAdmin responsibilities. Ensure your scripts adhere to the specified project requirements and learning objectives

## License

This project is licensed under the MIT License, a permissive open-source license. You can find the complete license text in the [LICENSE](LICENSE) file

This README provides comprehensive information about the project, including its concepts, background context, requirements, learning objectives, and guidelines for getting started, usage, contributing, and licensing. It serves as a reference point for anyone interested in the project on your GitHub repository.
```

