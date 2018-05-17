MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| day4               |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| customer             |
| dept                 |
| m1                   |
| manu                 |
| movies               |
| orders               |
| person               |
| products             |
+----------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from dept;
+-----+------------+------------------------+
| dno | name       | loc                    |
+-----+------------+------------------------+
|   1 | Ari        | 88217 Thackeray Avenue |
|   2 | Rubie      | 1934 Cascade Terrace   |
|   3 | Friederike | 2 Sauthoff Circle      |
|   4 | El         | 666 Valley Edge Alley  |
|   5 | Webb       | 954 Upham Park         |
+-----+------------+------------------------+
5 rows in set (0.05 sec)

MariaDB [csd2204s18]> exit
