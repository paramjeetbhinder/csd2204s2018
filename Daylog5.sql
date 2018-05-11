MariaDB [(none)]> show databases;\
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
6 rows in set (0.01 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show full tables;
+----------------------+------------+
| Tables_in_csd2204s18 | Table_type |
+----------------------+------------+
| customer             | BASE TABLE |
+----------------------+------------+
1 row in set (0.02 sec)

MariaDB [csd2204s18]> CREATE TABLE PERSONS(
    -> ID INTEGER(3) NOT NULL,
    -> LASTNAME VARCHAR(255) NOTNULL,
    -> FIRSTNAME VARCHAR(255) NOT NULL,
    -> AGE INTEGER(3),
    -> UNIQUE (ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
FIRSTNAME VARCHAR(255) NOT NULL,
AGE INTEGER(3),
UNIQUE (ID)
)' at line 3
MariaDB [csd2204s18]> CREATE TABLE PERSONS (
    -> ';
    '> ;'
    -> ';
    '> /c
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '';
;'
';
/c
'' at line 2
MariaDB [csd2204s18]> create table persons (
    -> ID integer(3) NOT NULL,
    -> Last name varchar(255) NOT NULL,
    -> Firstname varchar(255) NOT NULL,
    -> Age integer(3),
    -> UNIQUE (ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'name varchar(255) NOT NULL,
Firstname varchar(255) NOT NULL,
Age integer(3),
UNI' at line 3
MariaDB [csd2204s18]> create table persons(
    -> id integer(3),
    -> lastname varchar(255),
    -> firstname varchar(255),
    -> age integer(3),
    -> CONSTRAINT PK_PERSON PRIMARY KEY (ID,LASTNAME)
    -> );
Query OK, 0 rows affected (0.34 sec)

MariaDB [csd2204s18]> DESC PERSONS;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(3)       | NO   | PRI | NULL    |       |
| lastname  | varchar(255) | NO   | PRI | NULL    |       |
| firstname | varchar(255) | YES  |     | NULL    |       |
| age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.08 sec)

MariaDB [csd2204s18]> create tables orders(
    -> orderID integer(3)  NOT NULL,
    -> ordernumber integer(3) NOT NULL,
    -> personID integer(3),
    -> primary key (orderID),
    -> CONSTRAINT FK_personorder FOREIGN KEY(personID)
    -> REFERENCES persons(ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tables orders(
orderID integer(3)  NOT NULL,
ordernumber integer(3) NOT NULL,
pe' at line 1
MariaDB [csd2204s18]> -> orderID integer(3)  NOT NULL,
    ->     -> ordernumber integer(3) NOT NULL,
    ->     -> personID integer(3),
    ->     -> primary key (orderID),
    ->     -> CONSTRAINT FK_personorder FOREIGN KEY(personID)
    ->     -> REFERENCES persons(ID)
    -> 
    -> 
    -> ';
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '-> orderID integer(3)  NOT NULL,
    -> ordernumber integer(3) NOT NULL,
    -> ' at line 1
MariaDB [csd2204s18]> DESC CUSTOMER;
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
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table c1 as select * from customer;
Query OK, 10 rows affected (0.34 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> create table c2 as select name,postalcode from customer where city =toronto;
ERROR 1054 (42S22): Unknown column 'toronto' in 'where clause'
MariaDB [csd2204s18]> create table c2 as select name,postalcode from customer where city ='toronto';
Query OK, 3 rows affected (0.34 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(95) | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c1;
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
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> create table c3 like customer;
Query OK, 0 rows affected (0.22 sec)

MariaDB [csd2204s18]> desc c3;
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
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c3;
Empty set (0.00 sec)

MariaDB [csd2204s18]> insert into c3 select * from customer;
Query OK, 10 rows affected (0.03 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
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
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 add column country varchar(100);
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| custID     | varchar(95)  | NO   | PRI | NULL    |       |
| name       | varchar(50)  | YES  |     | NULL    |       |
| nickname   | varchar(10)  | YES  |     | NULL    |       |
| city       | varchar(20)  | YES  |     | NULL    |       |
| postalcode | varchar(10)  | YES  |     | NULL    |       |
| age        | int(3)       | YES  |     | NULL    |       |
| country    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 modify column country varchar(40);
Query OK, 10 rows affected (0.45 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(95) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 modify column Country varchar(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(95) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 change column custID customer ID varchar(95);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ID varchar(95)' at line 1
MariaDB [csd2204s18]> alter table c3 change column custID customerID varchar(95);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(95) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 drop column nickname;
Query OK, 0 rows affected (0.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(95) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 modify column customerID varchar(5);
Query OK, 10 rows affected (1.95 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c3 modify name varchar(50) not null;
Query OK, 10 rows affected (0.67 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(95) | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c1 add primary key(custID);
Query OK, 0 rows affected (0.33 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c1;
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
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c1 drop index custID;
ERROR 1091 (42000): Can't DROP 'custID'; check that column/key exists
MariaDB [csd2204s18]> alter table c1 drop custID;
Query OK, 10 rows affected (0.58 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

MariaDB [csd2204s18]> alter table c1 add column custID varchar(5);
Query OK, 0 rows affected (0.38 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| custID     | varchar(5)  | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c1 add primary key(custID);
ERROR 1062 (23000): Duplicate entry '' for key 'PRIMARY'
MariaDB [csd2204s18]> alter table c1 add primary key(custID);
ERROR 1062 (23000): Duplicate entry '' for key 'PRIMARY'
MariaDB [csd2204s18]> desc persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(3)       | NO   | PRI | NULL    |       |
| lastname  | varchar(255) | NO   | PRI | NULL    |       |
| firstname | varchar(255) | YES  |     | NULL    |       |
| age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalcode | age  | Country |
+------------+-----------------+------------+------------+------+---------+
| c01        | hiteshwar       | brampton   | l5p2h4     |   22 | NULL    |
| C02        | Bob marley      | Toronto    | 100100     |   23 | NULL    |
| C03        | Cherlies Theron | New York   | 120134     |   20 | NULL    |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | NULL    |
| C05        | Donna newman    | Toronto    | 130120     |   50 | NULL    |
| C06        | Eston M.        | Toronto    | 201023     |   65 | NULL    |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | NULL    |
| C08        | Ashko Charles   | USA        | 421044     |   72 | NULL    |
| C09        | Tony Special    | GTA        | 418921     |   62 | NULL    |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | NULL    |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c3 set country='usa';
Query OK, 10 rows affected (0.08 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalcode | age  | Country |
+------------+-----------------+------------+------------+------+---------+
| c01        | hiteshwar       | brampton   | l5p2h4     |   22 | usa     |
| C02        | Bob marley      | Toronto    | 100100     |   23 | usa     |
| C03        | Cherlies Theron | New York   | 120134     |   20 | usa     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | usa     |
| C05        | Donna newman    | Toronto    | 130120     |   50 | usa     |
| C06        | Eston M.        | Toronto    | 201023     |   65 | usa     |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | usa     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | usa     |
| C09        | Tony Special    | GTA        | 418921     |   62 | usa     |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | usa     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> upate c3 set country='canada' where city =('toronto','gta');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'upate c3 set country='canada' where city =('toronto','gta')' at line 1
MariaDB [csd2204s18]> upate c3 set country='canada' where city =('Toronto','GTA');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'upate c3 set country='canada' where city =('Toronto','GTA')' at line 1
MariaDB [csd2204s18]> upate c3 set country='canada' where city IN('Toronto','GTA');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'upate c3 set country='canada' where city IN('Toronto','GTA')' at line 1
MariaDB [csd2204s18]> upate c3 set country='canada' where city IN ('Toronto','GTA');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'upate c3 set country='canada' where city IN ('Toronto','GTA')' at line 1
MariaDB [csd2204s18]> update c3 set country='canada' where city IN ('Toronto','GTA');
Query OK, 4 rows affected (0.14 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalcode | age  | Country |
+------------+-----------------+------------+------------+------+---------+
| c01        | hiteshwar       | brampton   | l5p2h4     |   22 | usa     |
| C02        | Bob marley      | Toronto    | 100100     |   23 | canada  |
| C03        | Cherlies Theron | New York   | 120134     |   20 | usa     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | usa     |
| C05        | Donna newman    | Toronto    | 130120     |   50 | canada  |
| C06        | Eston M.        | Toronto    | 201023     |   65 | canada  |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | usa     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | usa     |
| C09        | Tony Special    | GTA        | 418921     |   62 | canada  |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | usa     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c3 set country='south america' where city='brazil';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> show * from c3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '* from c3' at line 1
MariaDB [csd2204s18]> select * from c3;
+------------+-----------------+------------+------------+------+---------------+
| customerID | name            | city       | postalcode | age  | Country       |
+------------+-----------------+------------+------------+------+---------------+
| c01        | hiteshwar       | brampton   | l5p2h4     |   22 | usa           |
| C02        | Bob marley      | Toronto    | 100100     |   23 | canada        |
| C03        | Cherlies Theron | New York   | 120134     |   20 | usa           |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | south america |
| C05        | Donna newman    | Toronto    | 130120     |   50 | canada        |
| C06        | Eston M.        | Toronto    | 201023     |   65 | canada        |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | usa           |
| C08        | Ashko Charles   | USA        | 421044     |   72 | usa           |
| C09        | Tony Special    | GTA        | 418921     |   62 | canada        |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | usa           |
+------------+-----------------+------------+------------+------+---------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| Bob marley   | 100100     |
| Donna newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.03 sec)

MariaDB [csd2204s18]> delete from c2 where name like='bob%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '='bob%'' at line 1
MariaDB [csd2204s18]> delete from c2 where name like 'bob%';
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> show * from c2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '* from c2' at line 1
MariaDB [csd2204s18]> select * from c2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| Donna newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c2                   |
| c3                   |
| customer             |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> drop table c2;
Query OK, 0 rows affected (0.19 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| persons              |
+----------------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> update c1 set custID=1 where age>=50;
Query OK, 5 rows affected (0.03 sec)
Rows matched: 5  Changed: 5  Warnings: 0

MariaDB [csd2204s18]> select * from c1;
+-----------------+----------+------------+------------+------+--------+
| name            | nickname | city       | postalcode | age  | custID |
+-----------------+----------+------------+------------+------+--------+
| hiteshwar       | hitesh   | brampton   | l5p2h4     |   22 | NULL   |
| Bob marley      | Bm       | Toronto    | 100100     |   23 | NULL   |
| Cherlies Theron | Cher     | New York   | 120134     |   20 | NULL   |
| Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL   |
| Donna newman    | New      | Toronto    | 130120     |   50 | 1      |
| Eston M.        | M.       | Toronto    | 201023     |   65 | 1      |
| Bobby Chacko    | Chac     | New York   | 320300     |   70 | 1      |
| Ashko Charles   | AK       | USA        | 421044     |   72 | 1      |
| Tony Special    | Specie   | GTA        | 418921     |   62 | 1      |
| Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL   |
+-----------------+----------+------------+------------+------+--------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from c1 where custID=null;
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from c1 where custID is null;
+-----------------+----------+------------+------------+------+--------+
| name            | nickname | city       | postalcode | age  | custID |
+-----------------+----------+------------+------------+------+--------+
| hiteshwar       | hitesh   | brampton   | l5p2h4     |   22 | NULL   |
| Bob marley      | Bm       | Toronto    | 100100     |   23 | NULL   |
| Cherlies Theron | Cher     | New York   | 120134     |   20 | NULL   |
| Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL   |
| Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL   |
+-----------------+----------+------------+------------+------+--------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> alter table c1 modify column age float(10,2);
Query OK, 10 rows affected (0.61 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> select * from c1;
+-----------------+----------+------------+------------+-------+--------+
| name            | nickname | city       | postalcode | age   | custID |
+-----------------+----------+------------+------------+-------+--------+
| hiteshwar       | hitesh   | brampton   | l5p2h4     | 22.00 | NULL   |
| Bob marley      | Bm       | Toronto    | 100100     | 23.00 | NULL   |
| Cherlies Theron | Cher     | New York   | 120134     | 20.00 | NULL   |
| Denial Jack     | DJ       | Brazil     | 341020     | 25.00 | NULL   |
| Donna newman    | New      | Toronto    | 130120     | 50.00 | 1      |
| Eston M.        | M.       | Toronto    | 201023     | 65.00 | 1      |
| Bobby Chacko    | Chac     | New York   | 320300     | 70.00 | 1      |
| Ashko Charles   | AK       | USA        | 421044     | 72.00 | 1      |
| Tony Special    | Specie   | GTA        | 418921     | 62.00 | 1      |
| Jack Sp         | Sparrow  | New Jersey | 102301     | 35.00 | NULL   |
+-----------------+----------+------------+------------+-------+--------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit
