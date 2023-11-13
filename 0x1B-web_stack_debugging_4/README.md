## Web stack debugging #4

Web stack debugging refers to the process of identifying, analyzing, and fixing issues or bugs in a web application's technology stack. A web stack typically consists of multiple layers and components, including the front end (client-side), the back end (server-side), and the underlying infrastructure. Debugging may involve troubleshooting issues related to code, configuration, performance, security, or interactions between different components.

![Web stack debugging #4](https://rpa.smartosc.com/wp-content/uploads/2021/09/image-46.jpeg)

![Web stack](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/313/frdkCrb.jpg)


### Web Server Issue:
# TASKS:

0. Sky is the limit, let's bring that limit higher

In this web stack debugging task, we are testing how well our web server setup featuring Nginx is doing under pressure and it turns out it’s not doing well: we are getting a huge amount of failed requests.

For the benchmarking, we are using ApacheBench which is a quite popular tool in the industry. It allows you to simulate HTTP requests to a web server. In this case, I will make 2000 requests to my server with 100 requests at a time. We can see that 943 requests failed, let’s fix our stack so that we get to 0, and remember that when something is going wrong, logs are your best friends!

root@0a62aa706eb3:/# ab -c 100 -n 2000 localhost/
This is ApacheBench, Version 2.3 <$Revision: 1528965 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 200 requests
Completed 400 requests
Completed 600 requests
Completed 800 requests
Completed 1000 requests
Completed 1200 requests
Completed 1400 requests
Completed 1600 requests
Completed 1800 requests
Completed 2000 requests
Finished 2000 requests


Server Software:        nginx/1.4.6
Server Hostname:        localhost
Server Port:            80

Document Path:          /
Document Length:        201 bytes

Concurrency Level:      100
Time taken for tests:   0.353 seconds
Complete requests:      2000
Failed requests:        943
   (Connect: 0, Receive: 0, Length: 943, Exceptions: 0)
Non-2xx responses:      1057
Total transferred:      1196526 bytes
HTML transferred:       789573 bytes
Requests per second:    5664.01 [#/sec] (mean)
Time per request:       17.655 [ms] (mean)
Time per request:       0.177 [ms] (mean, across all concurrent requests)
Transfer rate:          3309.15 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   1.1      0       8
Processing:     2   17   3.8     17      24
Waiting:        2   17   3.8     17      24
Total:          9   17   3.3     17      24

Percentage of the requests served within a certain time (ms)
  50%     17
  66%     19
  75%     20
  80%     20
  90%     21
  95%     23
  98%     23
  99%     23
 100%     24 (longest request)
root@0a62aa706eb3:/#
root@0a62aa706eb3:/# puppet apply 0-the_sky_is_the_limit_not.pp
Notice: Compiled catalog for 0a62aa706eb3.local in environment production in 0.01 seconds
Notice: /Stage[main]/Main/Exec[fix--for-nginx]/returns: executed successfully
Notice: Finished catalog run in 1.12 seconds
root@0a62aa706eb3:/#
root@0a62aa706eb3:/#
root@0a62aa706eb3:/# ab -c 100 -n 2000 localhost/
This is ApacheBench, Version 2.3 <$Revision: 1528965 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 200 requests
Completed 400 requests
Completed 600 requests
Completed 800 requests
Completed 1000 requests
Completed 1200 requests
Completed 1400 requests
Completed 1600 requests
Completed 1800 requests
Completed 2000 requests
Finished 2000 requests


Server Software:        nginx/1.4.6
Server Hostname:        localhost
Server Port:            80

Document Path:          /
Document Length:        612 bytes

Concurrency Level:      100
Time taken for tests:   0.301 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      1706000 bytes
HTML transferred:       1224000 bytes
Requests per second:    6650.99 [#/sec] (mean)
Time per request:       15.035 [ms] (mean)
Time per request:       0.150 [ms] (mean, across all concurrent requests)
Transfer rate:          5540.33 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    4   2.5      3      12
Processing:     2   11   5.2     10      31
Waiting:        1   10   5.2      8      29
Total:          5   15   5.2     14      31

Percentage of the requests served within a certain time (ms)
  50%     14
  66%     17
  75%     18
  80%     19
  90%     22
  95%     26
  98%     27
  99%     28
 100%     31 (longest request)
root@0a62aa706eb3:/#

1. User limit

Change the OS configuration so that it is possible to login with the holberton user and open a file without any error message.
root@079b7269ec1b:~# su - holberton
-su: /etc/profile: Too many open files
-su: /home/holberton/.bash_profile: Too many open files
-su-4.3$ head /etc/passwd
-su: start_pipeline: pgrp pipe: Too many open files
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
-su-4.3$
-su-4.3$
-su-4.3$ logout
-su: /home/holberton/.bash_logout: Too many open files
-su: /etc/bash.bash_logout: Too many open files
root@079b7269ec1b:~#
root@079b7269ec1b:~#
root@079b7269ec1b:~# puppet apply 1-user_limit.pp
Notice: Compiled catalog for 079b7269ec1b.ec2.internal in environment production in 0.02 seconds
Notice: /Stage[main]/Main/Exec[change-os-configuration-for-holberton-user]/returns: executed successfully
Notice: Finished catalog run in 0.06 seconds
root@079b7269ec1b:~#
root@079b7269ec1b:~#
root@079b7269ec1b:~# su - holberton
holberton@079b7269ec1b:~$ head /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
holberton@079b7269ec1b:~$

## Requirements
General
All your files will be interpreted on Ubuntu 14.04 LTS
All your files should end with a new line
A README.md file at the root of the folder of the project is mandatory
Your Puppet manifests must pass puppet-lint version 2.1.1 without any errors
Your Puppet manifests must run without error
Your Puppet manifests first line must be a comment explaining what the Puppet manifest is about
Your Puppet manifests files must end with the extension .pp
Files will be checked with Puppet v3.4
Install puppet-lint
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1

#### 1. Analyzing the Problem:

Since the issue involves failed requests under pressure, it's important to check Nginx logs for more information. Nginx logs can usually be found in locations like `/var/log/nginx/error.log` or `/var/log/nginx/access.log`.

```bash
sudo tail -f /var/log/nginx/error.log
sudo tail -f /var/log/nginx/access.log
```

#### 2. Nginx Configuration Adjustments:

Based on the log information, make adjustments to the Nginx configuration to handle the load more efficiently. Some areas to check and possibly modify:

- **Worker Processes:**
  Ensure that the number of worker processes in the Nginx configuration is sufficient for handling the load.

  ```nginx
  worker_processes auto;
  ```

- **Connection Handling:**
  Adjust the maximum number of connections and related settings.

  ```nginx
  events {
      worker_connections 1024;
  }
  ```

- **Buffer Size:**
  Increase buffer sizes if necessary.

  ```nginx
  http {
      client_max_body_size 10M;
      client_body_buffer_size 128k;
  }
  ```

#### 3. Restart Nginx:

After making changes, restart Nginx to apply the new configurations.

```bash
sudo service nginx restart
```

#### 4. Monitor:

Use monitoring tools to observe the server's performance and adjust configurations as needed. Tools like `htop`, `top`, or external monitoring services can be helpful.

### User Limit Issue:

#### 1. Adjusting User Limit:

Edit the `/etc/security/limits.conf` file to increase the user limits. Add or modify lines like the following:

```plaintext
holberton soft nofile 4096
holberton hard nofile 8192
```

#### 2. Re-login or Reboot:

For the changes to take effect, either re-login with the `holberton` user or reboot the system.

```bash
su - holberton
```

Web Server Performance Optimization

#### Description

This project focuses on optimizing the web server setup featuring Nginx under high-pressure scenarios. The goal is to eliminate failed requests during benchmarking using ApacheBench.

#### Steps to Reproduce the Issue

1. Clone the repository.
2. Set up the Nginx web server.
3. Run ApacheBench with parameters mentioned in the task.

#### Troubleshooting Steps

1. Check Nginx logs for errors: `/var/log/nginx/error.log`.
2. Adjust Nginx configurations (worker processes, connections, buffer size).
3. Restart Nginx.

#### User Limit Issue

1. Edit `/etc/security/limits.conf` to increase user limits for `holberton`.
2. Re-login with the `holberton` user or reboot the system.

#### Additional Notes

- Monitor server performance using tools like `htop`.
- Document any changes made to configurations.
- Provide feedback on successful resolution.

#### Tags

#WebServer #Nginx #PerformanceOptimization #Linux #Sysadmin #Troubleshooting #ApacheBench



