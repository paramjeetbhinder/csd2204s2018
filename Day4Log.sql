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
6 rows in set (0.09 sec)

MariaDB [(none)]> show full tables;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show full tables;
+----------------------+------------+
| Tables_in_csd2204s18 | Table_type |
+----------------------+------------+
| customer             | BASE TABLE |
+----------------------+------------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.11 sec)

MariaDB [csd2204s18]> insert into customer values('c01','ashley','ash','wdc','321200,'34');
    '> \c
    '> \c
    '> ;
    '> 
    '> 
    '> 
    '> \x
    '> 
    '> \c
    '> \q
    '> insert into customer values('c01','ashley','ash','wdc','321200,'34');;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '34');
\c
\c
;



\x

\c
\q
insert into customer values('c01','ashley','ash','wdc' at line 1
ERROR: No query specified

MariaDB [csd2204s18]> insert into customer values('c01','ashley','ash','wdc','321200','34');
Query OK, 1 row affected (0.16 sec)

MariaDB [csd2204s18]> ('BOB MARLEY','BOB','toronto','100100','23');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''BOB MARLEY','BOB','toronto','100100','23')' at line 1
MariaDB [csd2204s18]> ('c02','BOB MARLEY','BOB','toronto','100100','23');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''c02','BOB MARLEY','BOB','toronto','100100','23')' at line 1
MariaDB [csd2204s18]> INSERT INTO CUSTOMER VALUES('c02','BOB MARLEY','BOB','toronto','100100','23');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> INSERT INTO CUSTOMER VALUES('c03','charlies theron','char','New York','120134','20');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> INSERT INTO CUSTOMER VALUES('c04','Denial jack','Dj','Brazil','341020','25');
Query OK, 1 row affected (0.03 sec)

MariaDB [csd2204s18]> INSERT INTO CUSTOMER VALUES('c05','Donna newman','New','Toronto','130120','25');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> INSERT INTO CUSTOMER VALUES('C06',Eston M.','M.','Toronto','201023','65');
    '> INSERT INTO CUSTOMER VALUES('C06','Eston M.','M.','Toronto','201023','65');
    '> INSERT INTO CUSTOMER VALUES('C06','Eston M.','M.','Toronto','201023','65');
    '> INSERT INTO CUSTOMER VALUES('c06','Eston M','M','Toronto','201023','65');
    '> 
    '> \
    '> INSERT INTO CUSTOMER VALUES('c06','Eston M','M','Toronto','201023','65');..,.
    '> INSERT INTO CUSTOMER VALUES('c06','Eston M','M','Toronto','201023','65');..,.;;;
    '> INSERT INTO CUSTOMER VALUES('c06','Eston M','M','Toronto','201023','65';;;;;
    '> INSERT INTO CUSTOMER VALUES('c06','Eston M','M','Toronto','201023','65');;;;;
    '> 
    '> \c
    '> INSERT INTO CUSTOMER VALUES('c06','Eston M','M','Toronto','201023','65');;;;
    '> ]]
    '> );
    '> 
    '> 
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'M.','M.','Toronto','201023','65');
INSERT INTO CUSTOMER VALUES('C06','Eston M.',' at line 1
MariaDB [csd2204s18]> INSERT INTO CUSTOMER VALUES('c06','Eston M.','M.','Toronto','201023','65');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> INSERT INTO CUSTOMER VALUES('c07','Bobby chako','Chac','New york','320300','70');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> INSERT INTO CUSTOMER VALUES('c08','Ashko Charles','ak','USA','421044','72');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> INSERT INTO CUSTOMER VALUES('c09','Tony Special','Specie','GTA','418921','62');
Query OK, 1 row affected (0.05 sec)

MariaDB [csd2204s18]> select name,nickname from customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| ashley          | ash      |
| BOB MARLEY      | BOB      |
| charlies theron | char     |
| Denial jack     | Dj       |
| Donna newman    | New      |
| Eston M.        | M.       |
| Bobby chako     | Chac     |
| Ashko Charles   | ak       |
| Tony Special    | Specie   |
+-----------------+----------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c01    | ashley          | ash      | wdc      | 321200     |   34 |
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c04    | Denial jack     | Dj       | Brazil   | 341020     |   25 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
| c06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| c07    | Bobby chako     | Chac     | New york | 320300     |   70 |
| c08    | Ashko Charles   | ak       | USA      | 421044     |   72 |
| c09    | Tony Special    | Specie   | GTA      | 418921     |   62 |
+--------+-----------------+----------+----------+------------+------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,nickname from customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| ashley          | ash      |
| BOB MARLEY      | BOB      |
| charlies theron | char     |
| Denial jack     | Dj       |
| Donna newman    | New      |
| Eston M.        | M.       |
| Bobby chako     | Chac     |
| Ashko Charles   | ak       |
| Tony Special    | Specie   |
+-----------------+----------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city,postalCode from customer;
+----------+------------+
| city     | postalCode |
+----------+------------+
| wdc      | 321200     |
| toronto  | 100100     |
| New York | 120134     |
| Brazil   | 341020     |
| Toronto  | 130120     |
| Toronto  | 201023     |
| New york | 320300     |
| USA      | 421044     |
| GTA      | 418921     |
+----------+------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name ='ashley';
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| c01    | ashley | ash      | wdc  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.06 sec)

MariaDB [csd2204s18]> select * from customer where nickname ='ak';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| c08    | Ashko Charles | ak       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age<50;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c01    | ashley          | ash      | wdc      | 321200     |   34 |
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c04    | Denial jack     | Dj       | Brazil   | 341020     |   25 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
+--------+-----------------+----------+----------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age>50;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| c06    | Eston M.      | M.       | Toronto  | 201023     |   65 |
| c07    | Bobby chako   | Chac     | New york | 320300     |   70 |
| c08    | Ashko Charles | ak       | USA      | 421044     |   72 |
| c09    | Tony Special  | Specie   | GTA      | 418921     |   62 |
+--------+---------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age=50;
Empty set (0.00 sec)

MariaDB [csd2204s18]> 	select * from customer where age =50;
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name>ashley;
ERROR 1054 (42S22): Unknown column 'ashley' in 'where clause'
MariaDB [csd2204s18]> select * from customer where name>'ashley';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c04    | Denial jack     | Dj       | Brazil   | 341020     |   25 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
| c06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| c07    | Bobby chako     | Chac     | New york | 320300     |   70 |
| c09    | Tony Special    | Specie   | GTA      | 418921     |   62 |
+--------+-----------------+----------+----------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name<'Donna';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c01    | ashley          | ash      | wdc      | 321200     |   34 |
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c04    | Denial jack     | Dj       | Brazil   | 341020     |   25 |
| c07    | Bobby chako     | Chac     | New york | 320300     |   70 |
| c08    | Ashko Charles   | ak       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age=65;
+--------+----------+----------+---------+------------+------+
| custId | name     | nickname | city    | postalCode | age  |
+--------+----------+----------+---------+------------+------+
| c06    | Eston M. | M.       | Toronto | 201023     |   65 |
+--------+----------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where name ='ashley' OR city ='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| ashley       | wdc     |
| BOB MARLEY   | toronto |
| Donna newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select city from customer where city ='new york' OR city ='toronto';
+----------+
| city     |
+----------+
| toronto  |
| New York |
| Toronto  |
| Toronto  |
| New york |
+----------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city ='new york' OR city ='toronto';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
| c06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| c07    | Bobby chako     | Chac     | New york | 320300     |   70 |
+--------+-----------------+----------+----------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,city from customer where city ='new york' OR city ='toronto';
+-----------------+----------+
| name            | city     |
+-----------------+----------+
| BOB MARLEY      | toronto  |
| charlies theron | New York |
| Donna newman    | Toronto  |
| Eston M.        | Toronto  |
| Bobby chako     | New york |
+-----------------+----------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,age from customer where city ='toronto' AND age>50;
+----------+------+
| name     | age  |
+----------+------+
| Eston M. |   65 |
+----------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city ='toronto';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| c02    | BOB MARLEY   | BOB      | toronto | 100100     |   23 |
| c05    | Donna newman | New      | Toronto | 130120     |   25 |
| c06    | Eston M.     | M.       | Toronto | 201023     |   65 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) from customer where city ='toronto';
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.05 sec)

MariaDB [csd2204s18]> select count(*) 'No0. of customer in toronto' from customer where city ='toronto';
+-----------------------------+
| No0. of customer in toronto |
+-----------------------------+
|                           3 |
+-----------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) 'No. of customer>age 50' from customer where age>50;
+------------------------+
| No. of customer>age 50 |
+------------------------+
|                      4 |
+------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select count(*) 'No. of customer with age more than 50' from customer age>50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '>50' at line 1
MariaDB [csd2204s18]> select count(*) 'No. of customer with age more than 50' from customer where age>50;
+---------------------------------------+
| No. of customer with age more than 50 |
+---------------------------------------+
|                                     4 |
+---------------------------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age>30 AND age<70;
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| c01    | ashley       | ash      | wdc     | 321200     |   34 |
| c06    | Eston M.     | M.       | Toronto | 201023     |   65 |
| c09    | Tony Special | Specie   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age between 30 AND 70;
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| c01    | ashley       | ash      | wdc      | 321200     |   34 |
| c06    | Eston M.     | M.       | Toronto  | 201023     |   65 |
| c07    | Bobby chako  | Chac     | New york | 320300     |   70 |
| c09    | Tony Special | Specie   | GTA      | 418921     |   62 |
+--------+--------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age not between 30 AND 70;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c04    | Denial jack     | Dj       | Brazil   | 341020     |   25 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
| c08    | Ashko Charles   | ak       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age(max);
ERROR 1305 (42000): FUNCTION csd2204s18.age does not exist
MariaDB [csd2204s18]> select age(max);
ERROR 1305 (42000): FUNCTION csd2204s18.age does not exist
MariaDB [csd2204s18]> select max(age) from customer;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> select avg(age) from customer;
+----------+
| avg(age) |
+----------+
|  44.0000 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name ='b%';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name ='B%';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like ='B%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '='B%'' at line 1
MariaDB [csd2204s18]> select * from customer where name LIKE ='B%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '='B%'' at line 1
MariaDB [csd2204s18]> select * from customer where name LIKE 'B%';
+--------+-------------+----------+----------+------------+------+
| custId | name        | nickname | city     | postalCode | age  |
+--------+-------------+----------+----------+------------+------+
| c02    | BOB MARLEY  | BOB      | toronto  | 100100     |   23 |
| c07    | Bobby chako | Chac     | New york | 320300     |   70 |
+--------+-------------+----------+----------+------------+------+
2 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from customer where name LIKE '%N';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city like 'new york' OR like 'brazil';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'like 'brazil'' at line 1
MariaDB [csd2204s18]> select * from customer where city like 'new york%';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c07    | Bobby chako     | Chac     | New york | 320300     |   70 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where city like 'new york%' OR like 'brazil%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'like 'brazil%'' at line 1
MariaDB [csd2204s18]> select * from customer where name like '__n%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| c04    | Denial jack  | Dj       | Brazil  | 341020     |   25 |
| c05    | Donna newman | New      | Toronto | 130120     |   25 |
| c09    | Tony Special | Specie   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like '__n%' AND like '____n%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'like '____n%'' at line 1
MariaDB [csd2204s18]> select * from customer where name like '__n%' AND name like '____n%';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where name like '__n%' AND name like '____a%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| c04    | Denial jack  | Dj       | Brazil  | 341020     |   25 |
| c05    | Donna newman | New      | Toronto | 130120     |   25 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer limit 2;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| c01    | ashley     | ash      | wdc     | 321200     |   34 |
| c02    | BOB MARLEY | BOB      | toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age IN(20,25,65,72);
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c04    | Denial jack     | Dj       | Brazil   | 341020     |   25 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
| c06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| c08    | Ashko Charles   | ak       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where age NOT IN(20,25,65,72);
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| c01    | ashley       | ash      | wdc      | 321200     |   34 |
| c02    | BOB MARLEY   | BOB      | toronto  | 100100     |   23 |
| c07    | Bobby chako  | Chac     | New york | 320300     |   70 |
| c09    | Tony Special | Specie   | GTA      | 418921     |   62 |
+--------+--------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer where cityIN ('toronto','usa','gta');
ERROR 1305 (42000): FUNCTION csd2204s18.cityIN does not exist
MariaDB [csd2204s18]> select * from customer where city IN ('toronto','usa','gta');
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| c02    | BOB MARLEY    | BOB      | toronto | 100100     |   23 |
| c05    | Donna newman  | New      | Toronto | 130120     |   25 |
| c06    | Eston M.      | M.       | Toronto | 201023     |   65 |
| c08    | Ashko Charles | ak       | USA     | 421044     |   72 |
| c09    | Tony Special  | Specie   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
5 rows in set (0.00 sec)

MariaDB [csd2204s18]> select DISTINCT(city) AS 'unique cities' from customer;
+---------------+
| unique cities |
+---------------+
| wdc           |
| toronto       |
| New York      |
| Brazil        |
| USA           |
| GTA           |
+---------------+
6 rows in set (0.00 sec)

MariaDB [csd2204s18]> select count (DISTINCT(city)) AS 'unique cities' from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DISTINCT(city)) AS 'unique cities' from customer' at line 1
MariaDB [csd2204s18]> select count(DISTINCT(city)) AS 'unique cities' from customer;
+---------------+
| unique cities |
+---------------+
|             6 |
+---------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by name;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c08    | Ashko Charles   | ak       | USA      | 421044     |   72 |
| c01    | ashley          | ash      | wdc      | 321200     |   34 |
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c07    | Bobby chako     | Chac     | New york | 320300     |   70 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c04    | Denial jack     | Dj       | Brazil   | 341020     |   25 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
| c06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| c09    | Tony Special    | Specie   | GTA      | 418921     |   62 |
+--------+-----------------+----------+----------+------------+------+
9 rows in set (0.03 sec)

MariaDB [csd2204s18]> select * from customer order by DESC name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DESC name' at line 1
MariaDB [csd2204s18]> select * from customer order by name DESC;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c09    | Tony Special    | Specie   | GTA      | 418921     |   62 |
| c06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
| c04    | Denial jack     | Dj       | Brazil   | 341020     |   25 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c07    | Bobby chako     | Chac     | New york | 320300     |   70 |
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c01    | ashley          | ash      | wdc      | 321200     |   34 |
| c08    | Ashko Charles   | ak       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age DESC;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c08    | Ashko Charles   | ak       | USA      | 421044     |   72 |
| c07    | Bobby chako     | Chac     | New york | 320300     |   70 |
| c06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| c09    | Tony Special    | Specie   | GTA      | 418921     |   62 |
| c01    | ashley          | ash      | wdc      | 321200     |   34 |
| c04    | Denial jack     | Dj       | Brazil   | 341020     |   25 |
| c05    | Donna newman    | New      | Toronto  | 130120     |   25 |
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| c08    | Ashko Charles | ak       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from customer order by age DESC LIMIT 2;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| c08    | Ashko Charles | ak       | USA      | 421044     |   72 |
| c07    | Bobby chako   | Chac     | New york | 320300     |   70 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  (select * from customer order by age DESC LIMIT 2) AS t order by age ASC LIMIT 1;
+--------+-------------+----------+----------+------------+------+
| custId | name        | nickname | city     | postalCode | age  |
+--------+-------------+----------+----------+------------+------+
| c07    | Bobby chako | Chac     | New york | 320300     |   70 |
+--------+-------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from  (select * from customer order by age ASC LIMIT 2) AS t order by age ASC LIMIT 1;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c03    | charlies theron | char     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from  (select * from customer order by age ASC LIMIT 2) AS t order by age ASC LIMIT 2;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c03    | charlies theron | char     | New York | 120134     |   20 |
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  (select * from customer order by age ASC LIMIT 2) AS t order by age DESC LIMIT 2;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| c02    | BOB MARLEY      | BOB      | toronto  | 100100     |   23 |
| c03    | charlies theron | char     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from  (select * from customer order by age ASC LIMIT 2) AS t order by age DESC LIMIT 1;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| c02    | BOB MARLEY | BOB      | toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> exit
