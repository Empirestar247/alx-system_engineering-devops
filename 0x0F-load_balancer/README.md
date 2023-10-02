## Project: Load Balancer

![Load balancer](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/275/qfdked8.png)

## Background Context
You have been given 2 additional servers:

gc-[STUDENT_ID]-web-02-XXXXXXXXXX
gc-[STUDENT_ID]-lb-01-XXXXXXXXXX
Let’s improve our web stack so that there is redundancy for our web servers. This will allow us to be able to accept more traffic by doubling the number of web servers, and to make our infrastructure more reliable. If one web server fails, we will still have a second one to handle requests.

For this project, you will need to write Bash scripts to automate your work. All scripts must be designed to configure a brand new Ubuntu server to match the task requirements.

## Table of Contents

Introduction
Project Overview
Prerequisites
Setup
Configuration Steps
Installing HAProxy
Configuring HAProxy
Setting Up Web Servers
Testing Redundancy
Usage
Contributing
License

## Introduction

This project aims to enhance the web stack's redundancy by implementing a load balancer. By distributing incoming traffic across multiple web servers, we can increase the system's capacity, ensure high availability, and maintain reliability. In the event of one web server failing, the load balancer will redirect traffic to the healthy server(s), minimizing downtime.

Project Overview

We will automate the setup and configuration of a load balancer and two web servers on brand new Ubuntu servers. The load balancer will evenly distribute incoming requests to the web servers, providing redundancy and improved performance.

## This project involves setting up a load balancer and configuring web servers behind it to improve redundancy and handle more traffic. The project includes three tasks:

## Task 0: Double the number of webservers

Description of the task.
Explanation of how to configure Nginx with a custom HTTP header.
Usage of the provided Bash script.
Task 1: Install your load balancer

Description of the task.
Explanation of how to install and configure HAProxy.
Usage of the provided Bash script.
## Task 2: Add a custom HTTP header with Puppet (Advanced)

Description of the advanced task.
Explanation of how to automate the configuration using Puppet.
## Usage of the provided Puppet manifest.
## Prerequisites
Ubuntu 20.04 LTS
Bash scripting knowledge
Puppet (for Task 2)
## Getting Started
## Instructions on how to clone the repository and set up the project on your  local machine.

Two brand new Ubuntu servers (gc-[STUDENT_ID]-web-02-XXXXXXXXXX and gc-[STUDENT_ID]-lb-01-XXXXXXXXXX).
SSH access to these servers.
Basic knowledge of Bash scripting.


Ensure you have SSH access to your servers and have the necessary credentials.

Configuration Steps
Installing HAProxy

The install_haproxy.sh script installs HAProxy on your load balancer server.


./install_haproxy.sh

Configuring HAProxy

The configure_haproxy.sh script configures HAProxy to distribute traffic among the web servers.


./configure_haproxy.sh

Setting Up Web Servers

The setup_web_servers.sh script sets up two web servers with Nginx.


./setup_web_servers.sh

## Testing Redundancy
Steps to verify that the configurations are working as expected using curl.
After completing the configuration steps,test the redundancy by accessing the load balancer's public IP address in the web browser.To see the  web application served by one of the web servers. If you stop one of the web servers, HAProxy should automatically route traffic to the healthy server.

## Usage

To use this project:

Clone the repository to your local machine.

Follow the setup and configuration steps as described above.

Test the redundancy as outlined in the "Testing Redundancy" section.

Customize the scripts and configurations as needed for your specific environment.

## License

This project is licensed under the MIT License. See the LICENSE file for details.


