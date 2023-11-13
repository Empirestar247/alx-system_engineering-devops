## Web stack debugging #4

Web stack debugging refers to the process of identifying, analyzing, and fixing issues or bugs in a web application's technology stack. A web stack typically consists of multiple layers and components, including the front end (client-side), the back end (server-side), and the underlying infrastructure. Debugging may involve troubleshooting issues related to code, configuration, performance, security, or interactions between different components.

![Web stack debugging #4](https://rpa.smartosc.com/wp-content/uploads/2021/09/image-46.jpeg)

![Web stack](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/313/frdkCrb.jpg)


### Web Server Issue:
# TASKS:

0. Sky is the limit, let's bring that limit higher

In this web stack debugging task, we are testing how well our web server setup featuring Nginx is doing under pressure and it turns out it’s not doing well: we are getting a huge amount of failed requests.

For the benchmarking, we are using ApacheBench which is a quite popular tool in the industry. It allows you to simulate HTTP requests to a web server. In this case, I will make 2000 requests to my server with 100 requests at a time. We can see that 943 requests failed, let’s fix our stack so that we get to 0, and remember that when something is going wrong, logs are your best friends!

1. User limit

Change the OS configuration so that it is possible to login with the holberton user and open a file without any error message.

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



