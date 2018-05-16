MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| csd2204s2018       |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> create table acc_master(
    -> ';
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '';
'' at line 2
MariaDB [csd2204s18]> create table Acc_master(
    -> Ac_type varchar(3),
    -> Ac_no integer(12),
    -> Cust_no integer(5),
    -> Bal float(10,2),
    -> OD_limit float(10,2));
Query OK, 0 rows affected (0.20 sec)

MariaDB [csd2204s18]> create table Cust_master(
    -> Cust_no integer(5),
    -> Name varchar(50),
    -> Addr1 varchar(50),
    -> Addr2 varchar(50),
    -> Addr3 varchar(50),
    -> City varchar(30),
    -> State varchar(20));
Query OK, 0 rows affected (0.20 sec)

MariaDB [csd2204s18]> exit
