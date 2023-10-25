# Web Stack Debugging #0 - My Debugging Journey

![Docker](https://ih1.redbubble.net/image.388247602.8194/ra,unisex_tshirt,x2200,fafafa:ca443f4786,front-c,392,146,750,1000-bg,f8f8f8.jpg)
![docker](https://www.logolynx.com/images/logolynx/b2/b249832db7d9eb07176aa5c3a73b2782.png)


## Table of Contents
- [Web Stack Debugging #0 - My Debugging Journey](#web-stack-debugging-0---my-debugging-journey)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Project Background](#project-background)
  - [Getting Started](#getting-started)
    - [Installing Docker](#installing-docker)
  - [Tasks](#tasks)
    - [0. Give me a page!](#0-give-me-a-page)
  - [Contributing](#contributing)
  - [License](#license)

## Overview

Welcome to My Debugging Journey with Web Stack Debugging #0! This is the first step in my quest to master the art of debugging. As a budding DevOps and SysAdmin enthusiast, I understand that debugging skills are the key to unlocking the world of seamless software and systems.

In this series, I will be presented with broken or buggy web stacks and tasked with the mission to craft a Bash script that, when executed, restores the web stack to a fully functional state. However, before I embark on the scripting adventure, I must first diagnose and fix the issues manually.

For this specific project, my mission is clear:

1. Ensure that the server has a copy of the `/etc/passwd` file in `/tmp`.
2. Create a file named `/tmp/isworking` containing the string "OK."

These two elements are vital for the proper functioning of the web application, and I am ready to dive in and make it happen.

Please bear in mind that all actions, from file editing to system configurations, will be executed solely from the command line. Interactive software like emacs or vi is off-limits in my Bash script.

## Project Background

To embark on this thrilling debugging adventure, I'll be working within a container thoughtfully provided for me. However, if I wish to hone my debugging skills locally or experiment with Docker on my own machine, I can install Docker following the provided instructions.
![Web stack debugging](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/265/uWLzjc8.jpg)
### Installing Docker

To join the ranks of Docker explorers, here are installation guides for various platforms:

- [Install Docker on Mac OS](https://docs.docker.com/desktop/install/mac-install/)
- [Install Docker on Windows](https://docs.docker.com/desktop/install/windows-install/)
- [Install Docker on Ubuntu 14.04](https://docs.docker.com/engine/install/ubuntu1404/)
- [Install Docker on Ubuntu 16.04](https://docs.docker.com/engine/install/ubuntu1604/)

Let the debugging journey begin!

## Tasks

### 0. Give me a page!

In this inaugural debugging project, my mission is to awaken Apache within the container and make it return a page bearing the sacred words "Hello Holberton" when I query the root of the container.

At the start, I might encounter an error when querying the container. With unwavering determination, I will venture into the container, diagnose the issue, and apply my debugging skills to restore its glory. Upon successful completion, I expect to receive a page displaying the cherished message, "Hello Holberton."

For the curious minds who seek enlightenment, I shall provide the commands that summoned this miraculous transformation in my answer file.

## Contributing

As I embark on this debugging journey, I welcome fellow explorers to join me. If you have insights, suggestions, improvements, or revelations about the mysteries of debugging, feel free to share them. Open an issue or create a pull request to contribute to this quest for knowledge and mastery.

## License

This project follows the path of the MIT License, an open-source and permissive license that invites collaboration and sharing. You can find the complete text of this guiding license in the [LICENSE](LICENSE) file.

*Note: Let this README be a testament to my debugging prowess and the thrilling journey that lies ahead. May it serve as a beacon of knowledge for all who venture into the depths of my GitHub repository.*

This README provides a detailed account of my debugging journey, including the project's overview, background, installation instructions, tasks, and an open invitation for contributions. It stands as a testament to my commitment to mastering the art of debugging and sharing my insights with the world.
