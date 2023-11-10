## 0x18-webstack_monitoring

## Background Context
“You cannot fix or improve what you cannot measure” is a famous saying in the Tech industry. In the age of the data-ism, monitoring how our Software systems are doing is an important thing. In this project, we will implement one of many tools to measure what is going on our servers.

Web stack monitoring can be broken down into 2 categories:

Application monitoring: getting data about your running software and making sure it is behaving as expected
Server monitoring: getting data about your virtual or physical server and making sure they are not overloaded (could be CPU, memory, disk or network overload)

![webstack_monitoring](https://www.pingstack.com/images/monitor22.png)
![webstack](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/281/hb3pAsO.png)

## Webstack monitoring involves keeping a close eye on the various components of your web application stack to ensure optimal performance, identify issues, and troubleshoot potential problems. The web stack typically includes layers such as the web server, application server, database, and any other services your application relies on. 

## Here are some key aspects and tools related to webstack monitoring:
## Server Monitoring:

Metrics: Monitor server metrics such as CPU usage, memory usage, disk space, and network activity. Tools like Prometheus, Grafana, and Nagios can help.
Logs: Analyze server logs for errors, warnings, and other important events. Tools like ELK Stack (Elasticsearch, Logstash, Kibana) are commonly used for log management.

## Web Server Monitoring:

Metrics: Keep an eye on metrics specific to your web server, such as request/response times, error rates, and server status codes. Tools like Apache's mod_status or Nginx's ngx_http_stub_status module can provide these metrics.

## Application Performance Monitoring (APM):

Tracing: Use APM tools to trace and monitor transactions within your application. This helps identify bottlenecks and optimize code. Popular APM tools include New Relic, Datadog APM, and Zipkin.

## Database Monitoring:

Metrics: Monitor database metrics like query performance, connections, and cache usage. Tools such as Prometheus, Grafana, and specific database monitoring tools (e.g., Percona Monitoring and Management for MySQL) can be helpful.

## Network Monitoring:

Bandwidth and Latency: Monitor network bandwidth and latency to ensure smooth communication between different components. Tools like Wireshark, Nagios, or PRTG can be used for network monitoring.

## Security Monitoring:

Security Events: Keep an eye on security-related events, such as potential threats, unauthorized access attempts, and vulnerabilities. Security Information and Event Management (SIEM) tools like Splunk or ELK Stack can assist.

## Container Orchestration Monitoring:

If you're using container orchestration tools like Kubernetes or Docker Swarm, monitoring the health and performance of your containers is crucial. Tools like Prometheus, Grafana, and Kubernetes Dashboard can help.

## User Experience Monitoring:

Monitor user interactions and experiences on your website or application. Tools like Google Analytics or specialized user experience monitoring tools can provide insights into user behavior.

## Alerting:

Set up proactive alerting based on predefined thresholds for key metrics. This allows you to address issues before they impact users. Many monitoring tools include alerting features.

## Dashboarding:

Create customized dashboards that aggregate relevant metrics and provide a visual representation of the health and performance of your web stack. Grafana is commonly used for this purpose.

# Effective webstack monitoring ensures that your web application runs smoothly, delivers a positive user experience, and allows you to quickly respond to any issues that may arise

## Monitoring
Just as the heart monitor in a hospital that is making sure that a patient’s heart is beating and at the right beat, software monitoring will watch computer metrics, record them, and emit an alert if something is unusual or that could make the computer not work properly happens.

You cannot fix or improve what you cannot measure is a famous saying in the tech industry. In the age of the data-ism, monitoring how our software systems are doing is an important thing.

Web stack monitoring can be broken down into 2 categories:

Application monitoring: getting data about your running software and making sure it is behaving as expected
Server monitoring: getting data about your virtual or physical server and making sure they are not overloaded (could be CPU, memory, disk or network overload)
Here are few famous monitoring tools:
NewRelic
NewRelic requires you to add a piece of JavaScript to your website, this agent will collect information and send it back to the New Relic servers. It will give you a detailed analysis of how quickly your website loads in a browser, with a detailed analysis at every level of the stack. If the website is loading too slowly or users are experiencing error (500), there is a feature that allows you to trigger an alert. NewRelic now does much more than this, I’ll let you discover the rest.

DataDog
DataDog allows you to measure and monitor everything with graphs. It gathers performance data from all your application components. The service has a lot of integrations. You usually just need to properly configure your alert and you are good to go with solid monitoring coverage.

Uptime Robot
Uptime Robot is a simple service that will check that your website is responding from multiple locations in the world. This is the bare minimum when you host a website.

Nagios
Nagios is an open source project started in 1999, it is among the most widely used monitoring tools in the tech industry. It is, however, seen as outdated. Nagios had trouble adapting to the rise of the Cloud but is slowly trying to catch up.

WaveFront
Wavefront is a cutting edge monitoring service funded by great software engineers who’ve built monitoring tools for the best tech companies in Silicon Valley. The idea is to be able to analyze anything that can produce data points. A query language that looks like SQL allows users to apply mathematical operations to these data points to extract values or detect anomalies from the time series data. While it takes some time to get used to the tool, it’s the type of monitoring that the best companies are using. To my knowledge, LinkedIn, Facebook and DropBox are using a very similar tool for their monitoring needs.

## Server
Servers are located in datacenters which are buildings that host hundreds, or even thousands of computers (servers). You can think of a server as a computer without a keyboard, mouse, or screen, that is accessible only by a network. A server can be physical or virtual. A server runs an OS (operating system).

Read:

What is a server
Watch:

What is a server: 
![sever](https://www.youtube.com/watch?v=B1ANfsDyjeA)
Where are servers hosted (data centers):
![server](https://www.youtube.com/watch?v=iuqXFC_qIvA&t=33s)
Do not mix up server and web server. (Check out the web server concept page to know more about this.)

