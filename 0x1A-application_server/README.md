## Application server

### An application server is a specialized server designed to execute and host applications, particularly those that involve complex business logic, database interactions, and dynamic content generation. It provides the runtime environment for applications to run, managing various components necessary for their execution.

## Background Context
Your web infrastructure is already serving web pages via Nginx that you installed in your first web stack project. While a web server can also serve dynamic content, this task is usually given to an application server. In this project you will add this piece to your infrastructure, plug it to your Nginx and make is serve your Airbnb clone project.

![Application server](https://www.rentacomputer.com/images/slides/application-server-rental.jpg)

## Web Server vs Application Server
| Web Server                | Application Server       |
|---------------------------|--------------------------|
|Content Serving: Web servers primarily serve static content like HTML files, images, CSS, and JavaScript.

|Handling Requests: They handle HTTP requests by responding with pre-existing files.|
|Protocols: Focus mainly on HTTP/HTTPS protocols.
|Functionality: Limited to serving web content and basic request/response handling.
|Examples: Apache HTTP Server, Nginx, Microsoft IIS.
|Caching: Often incorporate caching mechanisms for performance optimization.
|Load Balancing: Some can manage load balancing across multiple servers for scalability.
|Security: Focus more on securing web content and connections.
|Responsiveness: Optimized for delivering web pages quickly to clients.
|Focus: Designed for handling web content and basic request/response protocols.   |Dynamic Content: Application servers are designed to execute dynamic, server-side code and generate dynamic content.|
|Business Logic: Execute business logic, interact with databases, handle security, transactions, and application-specific processes.|
|Protocols: Support various protocols beyond HTTP, depending on the applications they run e.g., TCP/IP, UDP.|
|Functionality: Include capabilities like middleware integration, session management, load balancing, and clustering for scalability.|
|Examples: Tomcat, JBoss, WebSphere, Node.js, Microsoft .NET-based servers.|
|Middleware Integration: Capable of integrating with various middleware and databases for application functionality.|
|Scalability Features: Often include features like clustering, load balancing, and failover mechanisms for scaling applications.|
|Session Management: Manage sessions and stateful interactions between clients and the server.|
|Security Focus: Emphasize securing application-specific functionalities and transactions.|
|Development Environment: Provide a platform for developing and deploying complex applications.|

These distinctions illustrate how web servers primarily handle static content delivery and basic HTTP requests, while application servers are tailored for executing business logic, managing databases, and supporting dynamic, application-specific functionalities in more complex web applications.

## Requirements
General
A README.md file, at the root of the folder of the project, is mandatory
Everything Python-related must be done using python3
All config files must have comments
Bash Scripts
All your files will be interpreted on Ubuntu 16.04 LTS
All your files should end with a new line
All your Bash script files must be executable
Your Bash script must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any error
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
The second line of all your Bash scripts should be a comment explaining what is the script doing

