MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| alay               |
| csd2204s18         |
| day3               |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
| tourist            |
+--------------------+
9 rows in set (0.01 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| countries            |
| departments          |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| products             |
| regions              |
+----------------------+
9 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from emplyees;
ERROR 1146 (42S02): Table 'csd2204s18.emplyees' doesn't exist
MariaDB [csd2204s18]> select * from employees;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
107 rows in set (0.03 sec)

MariaDB [csd2204s18]> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.06 sec)

MariaDB [csd2204s18]> select * from jobs;
+------------+---------------------------------+------------+------------+
| JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
+------------+---------------------------------+------------+------------+
| AD_PRES    | President                       |      20000 |      40000 |
| AD_VP      | Administration Vice President   |      15000 |      30000 |
| AD_ASST    | Administration Assistant        |       3000 |       6000 |
| FI_MGR     | Finance Manager                 |       8200 |      16000 |
| FI_ACCOUNT | Accountant                      |       4200 |       9000 |
| AC_MGR     | Accounting Manager              |       8200 |      16000 |
| AC_ACCOUNT | Public Accountant               |       4200 |       9000 |
| SA_MAN     | Sales Manager                   |      10000 |      20000 |
| SA_REP     | Sales Representative            |       6000 |      12000 |
| PU_MAN     | Purchasing Manager              |       8000 |      15000 |
| PU_CLERK   | Purchasing Clerk                |       2500 |       5500 |
| ST_MAN     | Stock Manager                   |       5500 |       8500 |
| ST_CLERK   | Stock Clerk                     |       2000 |       5000 |
| SH_CLERK   | Shipping Clerk                  |       2500 |       5500 |
| IT_PROG    | Programmer                      |       4000 |      10000 |
| MK_MAN     | Marketing Manager               |       9000 |      15000 |
| MK_REP     | Marketing Representative        |       4000 |       9000 |
| HR_REP     | Human Resources Representative  |       4000 |       9000 |
| PR_REP     | Public Relations Representative |       4500 |      10500 |
+------------+---------------------------------+------------+------------+
19 rows in set (0.00 sec)

MariaDB [csd2204s18]> select min(min_salary) from jobs;
+-----------------+
| min(min_salary) |
+-----------------+
|            2000 |
+-----------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select min(min_salary)+1000 from jobs;
+----------------------+
| min(min_salary)+1000 |
+----------------------+
|                 3000 |
+----------------------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> select first_name,last_name salary from employees where salary = (select min(min_salary)+1000 from jobs);
+------------+--------+
| first_name | salary |
+------------+--------+
| Anthony    | Cabrio |
| Kevin      | Feeney |
+------------+--------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary = (select min(min_salary)+1000 from jobs);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Anthony    | Cabrio    | 3000.00 |
| Kevin      | Feeney    | 3000.00 |
+------------+-----------+---------+
2 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |          0 |        1700 |
|           130 | Corporate Tax        |          0 |        1700 |
|           140 | Control And Credit   |          0 |        1700 |
|           150 | Shareholder Services |          0 |        1700 |
|           160 | Benefits             |          0 |        1700 |
|           170 | Manufacturing        |          0 |        1700 |
|           180 | Construction         |          0 |        1700 |
|           190 | Contracting          |          0 |        1700 |
|           200 | Operations           |          0 |        1700 |
|           210 | IT Support           |          0 |        1700 |
|           220 | NOC                  |          0 |        1700 |
|           230 | IT Helpdesk          |          0 |        1700 |
|           240 | Government Sales     |          0 |        1700 |
|           250 | Retail Sales         |          0 |        1700 |
|           260 | Recruiting           |          0 |        1700 |
|           270 | Payroll              |          0 |        1700 |
+---------------+----------------------+------------+-------------+
27 rows in set, 3 warnings (0.02 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > ALL(select avg(salary) from employees group by department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select salary,job_id from employees;
+----------+------------+
| salary   | job_id     |
+----------+------------+
| 24000.00 | AD_PRES    |
| 17000.00 | AD_VP      |
| 17000.00 | AD_VP      |
|  9000.00 | IT_PROG    |
|  6000.00 | IT_PROG    |
|  4800.00 | IT_PROG    |
|  4800.00 | IT_PROG    |
|  4200.00 | IT_PROG    |
| 12000.00 | FI_MGR     |
|  9000.00 | FI_ACCOUNT |
|  8200.00 | FI_ACCOUNT |
|  7700.00 | FI_ACCOUNT |
|  7800.00 | FI_ACCOUNT |
|  6900.00 | FI_ACCOUNT |
| 11000.00 | PU_MAN     |
|  3100.00 | PU_CLERK   |
|  2900.00 | PU_CLERK   |
|  2800.00 | PU_CLERK   |
|  2600.00 | PU_CLERK   |
|  2500.00 | PU_CLERK   |
|  8000.00 | ST_MAN     |
|  8200.00 | ST_MAN     |
|  7900.00 | ST_MAN     |
|  6500.00 | ST_MAN     |
|  5800.00 | ST_MAN     |
|  3200.00 | ST_CLERK   |
|  2700.00 | ST_CLERK   |
|  2400.00 | ST_CLERK   |
|  2200.00 | ST_CLERK   |
|  3300.00 | ST_CLERK   |
|  2800.00 | ST_CLERK   |
|  2500.00 | ST_CLERK   |
|  2100.00 | ST_CLERK   |
|  3300.00 | ST_CLERK   |
|  2900.00 | ST_CLERK   |
|  2400.00 | ST_CLERK   |
|  2200.00 | ST_CLERK   |
|  3600.00 | ST_CLERK   |
|  3200.00 | ST_CLERK   |
|  2700.00 | ST_CLERK   |
|  2500.00 | ST_CLERK   |
|  3500.00 | ST_CLERK   |
|  3100.00 | ST_CLERK   |
|  2600.00 | ST_CLERK   |
|  2500.00 | ST_CLERK   |
| 14000.00 | SA_MAN     |
| 13500.00 | SA_MAN     |
| 12000.00 | SA_MAN     |
| 11000.00 | SA_MAN     |
| 10500.00 | SA_MAN     |
| 10000.00 | SA_REP     |
|  9500.00 | SA_REP     |
|  9000.00 | SA_REP     |
|  8000.00 | SA_REP     |
|  7500.00 | SA_REP     |
|  7000.00 | SA_REP     |
| 10000.00 | SA_REP     |
|  9500.00 | SA_REP     |
|  9000.00 | SA_REP     |
|  8000.00 | SA_REP     |
|  7500.00 | SA_REP     |
|  7000.00 | SA_REP     |
| 10500.00 | SA_REP     |
|  9500.00 | SA_REP     |
|  7200.00 | SA_REP     |
|  6800.00 | SA_REP     |
|  6400.00 | SA_REP     |
|  6200.00 | SA_REP     |
| 11500.00 | SA_REP     |
| 10000.00 | SA_REP     |
|  9600.00 | SA_REP     |
|  7400.00 | SA_REP     |
|  7300.00 | SA_REP     |
|  6100.00 | SA_REP     |
| 11000.00 | SA_REP     |
|  8800.00 | SA_REP     |
|  8600.00 | SA_REP     |
|  8400.00 | SA_REP     |
|  7000.00 | SA_REP     |
|  6200.00 | SA_REP     |
|  3200.00 | SH_CLERK   |
|  3100.00 | SH_CLERK   |
|  2500.00 | SH_CLERK   |
|  2800.00 | SH_CLERK   |
|  4200.00 | SH_CLERK   |
|  4100.00 | SH_CLERK   |
|  3400.00 | SH_CLERK   |
|  3000.00 | SH_CLERK   |
|  3800.00 | SH_CLERK   |
|  3600.00 | SH_CLERK   |
|  2900.00 | SH_CLERK   |
|  2500.00 | SH_CLERK   |
|  4000.00 | SH_CLERK   |
|  3900.00 | SH_CLERK   |
|  3200.00 | SH_CLERK   |
|  2800.00 | SH_CLERK   |
|  3100.00 | SH_CLERK   |
|  3000.00 | SH_CLERK   |
|  2600.00 | SH_CLERK   |
|  2600.00 | SH_CLERK   |
|  4400.00 | AD_ASST    |
| 13000.00 | MK_MAN     |
|  6000.00 | MK_REP     |
|  6500.00 | HR_REP     |
| 10000.00 | PR_REP     |
| 12000.00 | AC_MGR     |
|  8300.00 | AC_ACCOUNT |
+----------+------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s18]> select salary,job_id from employees where job_id = sh_clerk;
ERROR 1054 (42S22): Unknown column 'sh_clerk' in 'where clause'
MariaDB [csd2204s18]> select salary,job_id from employees where job_id = SH_CLERK;
ERROR 1054 (42S22): Unknown column 'SH_CLERK' in 'where clause'
MariaDB [csd2204s18]> select salary,job_id from employees where job_id = 'SH_CLERK';
+---------+----------+
| salary  | job_id   |
+---------+----------+
| 3200.00 | SH_CLERK |
| 3100.00 | SH_CLERK |
| 2500.00 | SH_CLERK |
| 2800.00 | SH_CLERK |
| 4200.00 | SH_CLERK |
| 4100.00 | SH_CLERK |
| 3400.00 | SH_CLERK |
| 3000.00 | SH_CLERK |
| 3800.00 | SH_CLERK |
| 3600.00 | SH_CLERK |
| 2900.00 | SH_CLERK |
| 2500.00 | SH_CLERK |
| 4000.00 | SH_CLERK |
| 3900.00 | SH_CLERK |
| 3200.00 | SH_CLERK |
| 2800.00 | SH_CLERK |
| 3100.00 | SH_CLERK |
| 3000.00 | SH_CLERK |
| 2600.00 | SH_CLERK |
| 2600.00 | SH_CLERK |
+---------+----------+
20 rows in set (0.01 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > ALL( select salary,job_id from employees where job_id = 'SH_CLERK') order by salary;
ERROR 1241 (21000): Operand should contain 1 column(s)
MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary > ALL( select salary from employees where job_id = 'SH_CLERK') order by salary;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Jennifer    | Whalen     |  4400.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Kevin       | Mourgos    |  5800.00 |
| Bruce       | Ernst      |  6000.00 |
| Pat         | Fay        |  6000.00 |
| Sundita     | Kumar      |  6100.00 |
| Amit        | Banda      |  6200.00 |
| Charles     | Johnson    |  6200.00 |
| Sundar      | Ande       |  6400.00 |
| Susan       | Mavris     |  6500.00 |
| Shanta      | Vollman    |  6500.00 |
| David       | Lee        |  6800.00 |
| Luis        | Popp       |  6900.00 |
| Sarath      | Sewall     |  7000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Kimberely   | Grant      |  7000.00 |
| Mattea      | Marvins    |  7200.00 |
| Elizabeth   | Bates      |  7300.00 |
| William     | Smith      |  7400.00 |
| Nanette     | Cambrault  |  7500.00 |
| Louise      | Doran      |  7500.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Payam       | Kaufling   |  7900.00 |
| Lindsey     | Smith      |  8000.00 |
| Matthew     | Weiss      |  8000.00 |
| Christopher | Olsen      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| John        | Chen       |  8200.00 |
| William     | Gietz      |  8300.00 |
| Jack        | Livingston |  8400.00 |
| Jonathon    | Taylor     |  8600.00 |
| Alyssa      | Hutton     |  8800.00 |
| Allan       | McEwen     |  9000.00 |
| Peter       | Hall       |  9000.00 |
| Alexander   | Hunold     |  9000.00 |
| Daniel      | Faviet     |  9000.00 |
| Patrick     | Sully      |  9500.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Bernstein  |  9500.00 |
| Tayler      | Fox        |  9600.00 |
| Hermann     | Baer       | 10000.00 |
| Harrison    | Bloom      | 10000.00 |
| Janette     | King       | 10000.00 |
| Peter       | Tucker     | 10000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Clara       | Vishney    | 10500.00 |
| Gerald      | Cambrault  | 11000.00 |
| Ellen       | Abel       | 11000.00 |
| Den         | Raphaely   | 11000.00 |
| Lisa        | Ozer       | 11500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Shelley     | Higgins    | 12000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Michael     | Hartstein  | 13000.00 |
| Karen       | Partners   | 13500.00 |
| John        | Russell    | 14000.00 |
| Lex         | De Haan    | 17000.00 |
| Neena       | Kochhar    | 17000.00 |
| Steven      | King       | 24000.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name,salary from employees where salary < ANY( select salary from employees where job_id = 'SH_CLERK') order by salary;
+------------+-------------+---------+
| first_name | last_name   | salary  |
+------------+-------------+---------+
| TJ         | Olson       | 2100.00 |
| Hazel      | Philtanker  | 2200.00 |
| Steven     | Markle      | 2200.00 |
| Ki         | Gee         | 2400.00 |
| James      | Landry      | 2400.00 |
| Martha     | Sullivan    | 2500.00 |
| James      | Marlow      | 2500.00 |
| Randall    | Perkins     | 2500.00 |
| Karen      | Colmenares  | 2500.00 |
| Peter      | Vargas      | 2500.00 |
| Joshua     | Patel       | 2500.00 |
| Douglas    | Grant       | 2600.00 |
| Donald     | OConnell    | 2600.00 |
| Guy        | Himuro      | 2600.00 |
| Randall    | Matos       | 2600.00 |
| Irene      | Mikkilineni | 2700.00 |
| John       | Seo         | 2700.00 |
| Mozhe      | Atkinson    | 2800.00 |
| Vance      | Jones       | 2800.00 |
| Sigal      | Tobias      | 2800.00 |
| Girard     | Geoni       | 2800.00 |
| Michael    | Rogers      | 2900.00 |
| Timothy    | Gates       | 2900.00 |
| Shelli     | Baida       | 2900.00 |
| Kevin      | Feeney      | 3000.00 |
| Anthony    | Cabrio      | 3000.00 |
| Alana      | Walsh       | 3100.00 |
| Jean       | Fleaur      | 3100.00 |
| Alexander  | Khoo        | 3100.00 |
| Curtis     | Davies      | 3100.00 |
| Stephen    | Stiles      | 3200.00 |
| Julia      | Nayer       | 3200.00 |
| Samuel     | McCain      | 3200.00 |
| Winston    | Taylor      | 3200.00 |
| Jason      | Mallin      | 3300.00 |
| Laura      | Bissot      | 3300.00 |
| Julia      | Dellinger   | 3400.00 |
| Trenna     | Rajs        | 3500.00 |
| Renske     | Ladwig      | 3600.00 |
| Jennifer   | Dilly       | 3600.00 |
| Kelly      | Chung       | 3800.00 |
| Britney    | Everett     | 3900.00 |
| Sarah      | Bell        | 4000.00 |
| Alexis     | Bull        | 4100.00 |
+------------+-------------+---------+
44 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distint(manager_id) from employees; 
ERROR 1305 (42000): FUNCTION csd2204s18.distint does not exist
MariaDB [csd2204s18]> select distint(manager_id) from employees where manager_id!=0;
ERROR 1305 (42000): FUNCTION csd2204s18.distint does not exist
MariaDB [csd2204s18]> select firsselect distint(manager_id) from employees where manager_id!=0;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(manager_id) from employees where manager_id!=0' at line 1
MariaDB [csd2204s18]> select first_name,last_name from employees where employee_id NOT IN (select distinct(manager_id) from employees where manager_id!=0);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.00 sec)

MariaDB [csd2204s18]> select b.first_name,b.last_name from employees b where NOT EXISTS (select 'x' from employees a where a.manager_id = b.employee_id);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.01 sec)

MariaDB [csd2204s18]> select employee_id,first_name,last_nameSELECT employee_id, first_name, last_name,
    -> (SELECT department_name FROM departments d
    -> WHERE e.department_id = d.department_id)
    -> department
    -> FROM employees e ORDER BY department;
ERROR 1054 (42S22): Unknown column 'last_nameSELECT' in 'field list'
MariaDB [csd2204s18]> select "please help me god";
+--------------------+
| please help me god |
+--------------------+
| please help me god |
+--------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name,last_name (select department_name,from departments d where d.department_id = e.department_id) "department name" from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name,from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name,last_name (select department_name,from departments d where d.department_id = e.department_id) "department name" from employees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name,from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name,last_name (select department_name,from departments d where d.department_id = e.department_id) "department name" from employees e order by department;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name,from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name,last_name (select department_name,from departments d where d.department_id = e.department_id) "department name" from employees e order by department;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name,from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

MariaDB [csd2204s18]> desc employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID    | decimal(6,0) | NO   | PRI | 0       |       |
| FIRST_NAME     | varchar(20)  | YES  |     | NULL    |       |
| LAST_NAME      | varchar(25)  | NO   | MUL | NULL    |       |
| EMAIL          | varchar(25)  | NO   | UNI | NULL    |       |
| PHONE_NUMBER   | varchar(20)  | YES  |     | NULL    |       |
| HIRE_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID         | varchar(10)  | NO   | MUL | NULL    |       |
| SALARY         | decimal(8,2) | YES  |     | NULL    |       |
| COMMISSION_PCT | decimal(2,2) | YES  |     | NULL    |       |
| MANAGER_ID     | decimal(6,0) | YES  | MUL | NULL    |       |
| DEPARTMENT_ID  | decimal(4,0) | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

MariaDB [csd2204s18]> select avg(salary) from employees;
+-------------+
| avg(salary) |
+-------------+
| 6461.682243 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select employee_id,first_name,last_name,salary from employees where salary>(select avg(salary) from employees);
+-------------+-------------+------------+----------+
| employee_id | first_name  | last_name  | salary   |
+-------------+-------------+------------+----------+
|         100 | Steven      | King       | 24000.00 |
|         101 | Neena       | Kochhar    | 17000.00 |
|         102 | Lex         | De Haan    | 17000.00 |
|         103 | Alexander   | Hunold     |  9000.00 |
|         108 | Nancy       | Greenberg  | 12000.00 |
|         109 | Daniel      | Faviet     |  9000.00 |
|         110 | John        | Chen       |  8200.00 |
|         111 | Ismael      | Sciarra    |  7700.00 |
|         112 | Jose Manuel | Urman      |  7800.00 |
|         113 | Luis        | Popp       |  6900.00 |
|         114 | Den         | Raphaely   | 11000.00 |
|         120 | Matthew     | Weiss      |  8000.00 |
|         121 | Adam        | Fripp      |  8200.00 |
|         122 | Payam       | Kaufling   |  7900.00 |
|         123 | Shanta      | Vollman    |  6500.00 |
|         145 | John        | Russell    | 14000.00 |
|         146 | Karen       | Partners   | 13500.00 |
|         147 | Alberto     | Errazuriz  | 12000.00 |
|         148 | Gerald      | Cambrault  | 11000.00 |
|         149 | Eleni       | Zlotkey    | 10500.00 |
|         150 | Peter       | Tucker     | 10000.00 |
|         151 | David       | Bernstein  |  9500.00 |
|         152 | Peter       | Hall       |  9000.00 |
|         153 | Christopher | Olsen      |  8000.00 |
|         154 | Nanette     | Cambrault  |  7500.00 |
|         155 | Oliver      | Tuvault    |  7000.00 |
|         156 | Janette     | King       | 10000.00 |
|         157 | Patrick     | Sully      |  9500.00 |
|         158 | Allan       | McEwen     |  9000.00 |
|         159 | Lindsey     | Smith      |  8000.00 |
|         160 | Louise      | Doran      |  7500.00 |
|         161 | Sarath      | Sewall     |  7000.00 |
|         162 | Clara       | Vishney    | 10500.00 |
|         163 | Danielle    | Greene     |  9500.00 |
|         164 | Mattea      | Marvins    |  7200.00 |
|         165 | David       | Lee        |  6800.00 |
|         168 | Lisa        | Ozer       | 11500.00 |
|         169 | Harrison    | Bloom      | 10000.00 |
|         170 | Tayler      | Fox        |  9600.00 |
|         171 | William     | Smith      |  7400.00 |
|         172 | Elizabeth   | Bates      |  7300.00 |
|         174 | Ellen       | Abel       | 11000.00 |
|         175 | Alyssa      | Hutton     |  8800.00 |
|         176 | Jonathon    | Taylor     |  8600.00 |
|         177 | Jack        | Livingston |  8400.00 |
|         178 | Kimberely   | Grant      |  7000.00 |
|         201 | Michael     | Hartstein  | 13000.00 |
|         203 | Susan       | Mavris     |  6500.00 |
|         204 | Hermann     | Baer       | 10000.00 |
|         205 | Shelley     | Higgins    | 12000.00 |
|         206 | William     | Gietz      |  8300.00 |
+-------------+-------------+------------+----------+
51 rows in set (0.02 sec)

MariaDB [csd2204s18]> select employee_id,first_name,last_name,salary from employees e where salary>(select avg(salary) from employees group by department_id HAVING department_id = e.department_id);
+-------------+------------+-----------+----------+
| employee_id | first_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         100 | Steven     | King      | 24000.00 |
|         103 | Alexander  | Hunold    |  9000.00 |
|         104 | Bruce      | Ernst     |  6000.00 |
|         108 | Nancy      | Greenberg | 12000.00 |
|         109 | Daniel     | Faviet    |  9000.00 |
|         114 | Den        | Raphaely  | 11000.00 |
|         120 | Matthew    | Weiss     |  8000.00 |
|         121 | Adam       | Fripp     |  8200.00 |
|         122 | Payam      | Kaufling  |  7900.00 |
|         123 | Shanta     | Vollman   |  6500.00 |
|         124 | Kevin      | Mourgos   |  5800.00 |
|         137 | Renske     | Ladwig    |  3600.00 |
|         141 | Trenna     | Rajs      |  3500.00 |
|         145 | John       | Russell   | 14000.00 |
|         146 | Karen      | Partners  | 13500.00 |
|         147 | Alberto    | Errazuriz | 12000.00 |
|         148 | Gerald     | Cambrault | 11000.00 |
|         149 | Eleni      | Zlotkey   | 10500.00 |
|         150 | Peter      | Tucker    | 10000.00 |
|         151 | David      | Bernstein |  9500.00 |
|         152 | Peter      | Hall      |  9000.00 |
|         156 | Janette    | King      | 10000.00 |
|         157 | Patrick    | Sully     |  9500.00 |
|         158 | Allan      | McEwen    |  9000.00 |
|         162 | Clara      | Vishney   | 10500.00 |
|         163 | Danielle   | Greene    |  9500.00 |
|         168 | Lisa       | Ozer      | 11500.00 |
|         169 | Harrison   | Bloom     | 10000.00 |
|         170 | Tayler     | Fox       |  9600.00 |
|         174 | Ellen      | Abel      | 11000.00 |
|         184 | Nandita    | Sarchand  |  4200.00 |
|         185 | Alexis     | Bull      |  4100.00 |
|         188 | Kelly      | Chung     |  3800.00 |
|         189 | Jennifer   | Dilly     |  3600.00 |
|         192 | Sarah      | Bell      |  4000.00 |
|         193 | Britney    | Everett   |  3900.00 |
|         201 | Michael    | Hartstein | 13000.00 |
|         205 | Shelley    | Higgins   | 12000.00 |
+-------------+------------+-----------+----------+
38 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees e1 where 5=(select count(distinct salary) from employees e2 where e2.salary>=e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.01 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees e1 where 3=(select count(distinct salary) from employees e2 where e2.salary<=e1.salary);
+---------+
| salary  |
+---------+
| 2400.00 |
+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> SELECT DISTINCT salary FROM employees e1
    -> WHERE 4 = (SELECT COUNT(DISTINCT salary)
    -> FROM employees e2
    -> WHERE e2.salary <= e1.salary);
+---------+
| salary  |
+---------+
| 2500.00 |
+---------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select * from (select * from employees order by employee_id desc limit 10) sub order by employee_id asc;
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         197 | Kevin      | Feeney    | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell  | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas    | Grant     | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444 | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555 | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080 | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William    | Gietz     | WGIETZ   | 515.123.8181 | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(department_id) from employees;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s18]> select department_id,department_name from departments where department_id NOT IN (select distinct(department_id) from employees);
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
16 rows in set (0.00 sec)

MariaDB [csd2204s18]> select distinct(salary) from employees order by desc limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc limit 3' at line 1
MariaDB [csd2204s18]> select distinct(salary) from employees order by salary desc limit 3;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
+----------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit
