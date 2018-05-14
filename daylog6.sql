MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.13 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| persons              |
+----------------------+
4 rows in set (0.03 sec)

MariaDB [csd2204s18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(95) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.28 sec)

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| c01    | hiteshwar       | hitesh   | brampton   | l5p2h4     |   22 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.01 sec)

MariaDB [csd2204s18]> select now();
+---------------------+
| now()               |
+---------------------+
| 2018-05-14 09:15:11 |
+---------------------+
1 row in set (0.01 sec)

MariaDB [csd2204s18]> alter table customer add column DOB date;
Query OK, 0 rows affected (0.42 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(95) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| DOB        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------+
| custID | name            | nickname | city       | postalcode | age  | DOB  |
+--------+-----------------+----------+------------+------------+------+------+
| c01    | hiteshwar       | hitesh   | brampton   | l5p2h4     |   22 | NULL |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 | NULL |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 | NULL |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL |
| C05    | Donna newman    | New      | Toronto    | 130120     |   50 | NULL |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | NULL |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | NULL |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL |
+--------+-----------------+----------+------------+------------+------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set DOB = '1991-01-10' where custID = 'c01';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set DOB = '1992-01-15' where custID = 'c02';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set DOB = '1994-03-11' where custID = 'c03';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set DOB = '1995-05-21' where custID = 'c04';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set DOB = '199-05-30' where custID = 'c05';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set DOB = '1995-11-10' where custID = 'c06';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set DOB = '1995-07-26' where custID = 'c07';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set DOB = '1993-05-26' where custID = 'c08';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set DOB = '1991-12-22' where custID = 'c09';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> update customer set DOB = '1992-11-14' where custID = 'c10';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custID | name            | nickname | city       | postalcode | age  | DOB        |
+--------+-----------------+----------+------------+------------+------+------------+
| c01    | hiteshwar       | hitesh   | brampton   | l5p2h4     |   22 | 1991-01-10 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 | 1992-01-15 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 | 1994-03-11 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | 1995-05-21 |
| C05    | Donna newman    | New      | Toronto    | 130120     |   50 | 0199-05-30 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 | 1995-11-10 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | 1995-07-26 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | 1993-05-26 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1991-12-22 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | 1992-11-14 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update customer set DOB = '1994-05-30' where custID = 'c05';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custID | name            | nickname | city       | postalcode | age  | DOB        |
+--------+-----------------+----------+------------+------------+------+------------+
| c01    | hiteshwar       | hitesh   | brampton   | l5p2h4     |   22 | 1991-01-10 |
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   23 | 1992-01-15 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 | 1994-03-11 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | 1995-05-21 |
| C05    | Donna newman    | New      | Toronto    | 130120     |   50 | 1994-05-30 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 | 1995-11-10 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | 1995-07-26 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | 1993-05-26 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1991-12-22 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | 1992-11-14 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,DOB,timestampdiff(year,DOB,curdate())'age' from customer;
+-----------------+------------+------+
| name            | DOB        | age  |
+-----------------+------------+------+
| hiteshwar       | 1991-01-10 |   27 |
| Bob marley      | 1992-01-15 |   26 |
| Cherlies Theron | 1994-03-11 |   24 |
| Denial Jack     | 1995-05-21 |   22 |
| Donna newman    | 1994-05-30 |   23 |
| Eston M.        | 1995-11-10 |   22 |
| Bobby Chacko    | 1995-07-26 |   22 |
| Ashko Charles   | 1993-05-26 |   24 |
| Tony Special    | 1991-12-22 |   26 |
| Jack Sp         | 1992-11-14 |   25 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,DOB,age='22';
ERROR 1054 (42S22): Unknown column 'name' in 'field list'
MariaDB [csd2204s18]> select name,DOB,age='22' from customer;
+-----------------+------------+----------+
| name            | DOB        | age='22' |
+-----------------+------------+----------+
| hiteshwar       | 1991-01-10 |        1 |
| Bob marley      | 1992-01-15 |        0 |
| Cherlies Theron | 1994-03-11 |        0 |
| Denial Jack     | 1995-05-21 |        0 |
| Donna newman    | 1994-05-30 |        0 |
| Eston M.        | 1995-11-10 |        0 |
| Bobby Chacko    | 1995-07-26 |        0 |
| Ashko Charles   | 1993-05-26 |        0 |
| Tony Special    | 1991-12-22 |        0 |
| Jack Sp         | 1992-11-14 |        0 |
+-----------------+------------+----------+
10 rows in set (0.03 sec)

MariaDB [csd2204s18]> select name,DOB,age from customer having age='22';
+-----------+------------+------+
| name      | DOB        | age  |
+-----------+------------+------+
| hiteshwar | 1991-01-10 |   22 |
+-----------+------------+------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> select name,DOB,age from customer where age='22';
+-----------+------------+------+
| name      | DOB        | age  |
+-----------+------------+------+
| hiteshwar | 1991-01-10 |   22 |
+-----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select name,DOB,timestamdiff(year,DOB,curdate())'age' from customer where timestampdiff(year,DOB,curdate()) = 22;
ERROR 1305 (42000): FUNCTION csd2204s18.timestamdiff does not exist
MariaDB [csd2204s18]> select name,DOB,timestampdiff(year,DOB,curdate())'age' from customer where timestampdiff(year,DOB,curdate()) = 22;
+--------------+------------+------+
| name         | DOB        | age  |
+--------------+------------+------+
| Denial Jack  | 1995-05-21 |   22 |
| Eston M.     | 1995-11-10 |   22 |
| Bobby Chacko | 1995-07-26 |   22 |
+--------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit
