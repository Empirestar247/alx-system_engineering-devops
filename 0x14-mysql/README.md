## MySQL

![mysql](https://ap2vnoida.training/media/images/courses/mysql-training-in-noida-1.jpg)

![MYSQL](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/280/KkrkDHT.png)

## [How to] Install mysql 5.7
Copy the key here to your clipboard

https://dev.mysql.com/doc/refman/5.7/en/checking-gpg-signature.html

Save it in a file on your machine i.e. signature.key and then

sudo apt-key add signature.key
add the apt repo

sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'
update apt

sudo apt-get update
now check your available versions:

vagrant@ubuntu-focal:/vagrant$ sudo apt-cache policy mysql-server
mysql-server:
  Installed: (none)
  Candidate: 8.0.27-0ubuntu0.20.04.1
  Version table:
     8.0.27-0ubuntu0.20.04.1 500
        500 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages
        500 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages
     8.0.19-0ubuntu5 500
        500 http://archive.ubuntu.com/ubuntu focal/main amd64 Packages
     5.7.37-1ubuntu18.04 500
        500 http://repo.mysql.com/apt/ubuntu bionic/mysql-5.7 amd64 Packages
Now install mysql 5.7

sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*

## OR FOLLOW (OPTION2)

#!/usr/bin/env bash
sudo apt update
sudo apt-key add signature.key
sudo sh -o 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'
sudo apt-get update
sudo apt-cache policy mysql-server
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*

## Learning Objectives
What is the main role of a database
What is a database replica
What is the purpose of a database replica
Why database backups need to be stored in different physical locations
What operation should you regularly perform to make sure that your database backup strategy actually works

## MySQL is an open-source relational database management system (RDBMS) that is used to manage and store structured data. It is one of the most popular and widely used database systems in the world, known for its reliability, speed, and ease of use. Here are some key characteristics and aspects of MySQL:

1. **Relational Database:** MySQL is a relational database, which means it organizes data into tables with rows and columns. This tabular structure allows for efficient data storage and retrieval.

2. **Open Source:** MySQL is distributed under an open-source license, making it freely available for use, modification, and distribution. It has a vibrant community of developers and users.

3. **Cross-Platform:** MySQL is compatible with various operating systems, including Linux, Windows, macOS, and more. This cross-platform compatibility allows it to be used in a wide range of environments.

4. **SQL Support:** MySQL uses Structured Query Language (SQL) for querying and managing data. It adheres to SQL standards, and developers can use SQL commands to interact with the database.

5. **High Performance:** MySQL is known for its fast performance, making it suitable for applications that require rapid data processing and retrieval.

6. **Scalability:** MySQL can be used for small-scale projects and can also scale to handle large, high-traffic applications. It provides features for replication, clustering, and partitioning to support scalability.

7. **Security Features:** MySQL offers security features such as user authentication, access control, and data encryption to protect data stored in the database.

8. **Community and Support:** MySQL has a large and active community, which means there are extensive resources, documentation, and support forums available to help users.

9. **Storage Engines:** MySQL supports multiple storage engines, including InnoDB, MyISAM, and more. Each engine has its strengths and is suited for different use cases.

10. **Integration:** MySQL can be easily integrated with various programming languages, frameworks, and tools, making it a popular choice for web applications, content management systems (e.g., WordPress), and other software solutions.

MySQL is commonly used in conjunction with web development technologies like PHP, Python, and Ruby to store and manage data for web applications. It's a fundamental component of popular technology stacks, such as LAMP (Linux, Apache, MySQL, PHP/Perl/Python) and MEAN (MongoDB, Express.js, Angular, Node.js), among others.

Project Task
Creating a user and Granting Priviledges in mysql
$ mysql -root -p
Password:	/* Type root password

mysql> CREATE USER 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';

mysql> GRANT GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';

mysql> FLUSH PRIVILEGES;
Creating Database, Tables and adding Data to the Tables
mysql> CREATE DATABASE db_name_;

-- To verify if db is created
mysql> SHOW DATABASES;

mysql> USE db_name;

mysql> CREATE TABLE table_name (
    -> col_1 data_type,
    -> col_2 data_type);
-- continue adding more coloums to your taste for me i just added two coloumns

mysql> INSERT INTO table_name VALUES (val_1, val_2);

-- Verify if data was added succesfully do
mysql> SELECT col_1, col_2 FROM tb_name;
Setting Up MySQL Replication
First create replication user and grant replication priviledge ( best practice).
mysql> CREATE USER 'replica_user'@'%' IDENTIFIED BY 'replica_user_pwd';

mysql> GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';

mysql> FLUSH PRIVILEGES;

-- to verify
mysql> SELECT user, Repl_slave_priv FROM mysql.user;

mysql> exit
Next up you go to the /etc/mysql/mysql.conf.d/mysqld.cnf and comment the bind address and then add this lines to it
# By default we only accept connections from localhost
# bind-address = 127.0.0.1
server-id = 1
log_bin = /var/log/mysql/mysql-bin.log
binlog_do_db = db_name
Then you enable incoming connection to port 3306 and restart mysql-server
$ sudo ufw allow from 'replica_server_ip' to any port 3306

$ sudo service mysql restart
Now log back in to mysql-server to lock db and prepare binary file for replication.
$ mysql -uroot -p
password:
mysql> 

mysql> FLUSH TABLES WITH READ LOCK;

mysql> SHOW MASTER STATUS;

+------------------+----------+--------------+------------------+-------------------+
| File             | Position | Binlog_Do_DB | Binlog_Ignore_DB | Executed_Gtid_Set |
+------------------+----------+--------------+------------------+-------------------+
| mysql-bin.000001 |      149 | db           |                  |                   |
+------------------+----------+--------------+------------------+-------------------+
Take note of the binary log and the position, jot it down or you leave this window open and you open another window to continue

you then export the db from myql-server to local machine and then copy this db to replica machine
$ mysqldump -uroot -p db_name > export_db_name.sql

$ scp -i _idenetity_file_ export_db_name.sql user@machine_ip:location
Then ssh to replica machine ip_adress to import this tables to replica mysql-server
$ mysql -uroot -p 
password:


mysql> CREATE DATABASE db_name;

mysql>exit
bye

$ mysql -uroot p db_name < export_db_name.sql
password:

# Now edit the config file in /etc/mysql/mysql.conf.d/mysqld.cnf and then reload mysql-server

```bash

server-id = 2
log_bin = /var/log/mysql/mysql-bin.log
binlog_do_db = db_name_from_master_mysql-server
relay_log = /var/log/mysql/mysql-relay-bin.log

$ sudo service mysql restart
Login to mysql server in replica to configure replication
$ mysql -uroot -p
password:


mysql>
mysql> CHANGE MASTER TO
    -> MASTER_HOST='source_host_name',
    -> MASTER_USER='replication_user_name',
    -> MASTER_PASSWORD='replication_password',
    -> MASTER_LOG_FILE='recorded_log_file_name',
    -> MASTER_LOG_POS=recorded_log_position;

-- Then you start slave
mysql> START SLAVE;
