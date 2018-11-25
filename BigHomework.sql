--База данных - Банк

--База данных включает в себя 4 вспомогательных таблиц: клиенты, работники, место, тип операции. И главной, включающей в себя информацию о каждой операции.  

CREATE DATABASE bank;

GRANT ALL PRIVILEGES ON DATABASE bank TO defygee;

--//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

--Создание таблицы с клиентами

CREATE TABLE clients(id INT, surname VARCHAR, name VARCHAR, patronymic VARCHAR, nationality VARCHAR, date_of_birth DATE, pass_series INT, pass_num INT, phone_number VARCHAR, salary FLOAT, note TEXT, PRIMARY KEY(id));

--Заполнение данными

INSERT INTO clients values(1,'Zvonarev','Alexey','Evgenevich','Russia','2000-08-07','4542','645231','+79534450975', 1000000.0,NULL);
INSERT INTO clients values(2,'Martinovich','Vasiliy','Alexandrovich','Ukraine','1997-02-15','4554','153835','+79556678475', 200000.0,NULL);
INSERT INTO clients values(3,'Arsak','Sergey','Evgenevich','Russia','2000-01-25','4357','895789','+79842468536', 50000.0,NULL);
INSERT INTO clients values(4,'Arilev','Oleg','Dmitrievich','Russia','1990-03-03','4754','785454','+79086425791', 100000.0,NULL);
INSERT INTO clients values(5,'Antonov','Nikita','Vasilevich','Russia','1987-11-11','4657','653354','+79764741062', 70000.0,NULL);
INSERT INTO clients values(6,'Vasilev','Alexey','Alexandrovich','Russia','1999-01-20','4864','643431','+79534459635', 521000.0,NULL);

--Вывод данных

SELECT * FROM clients;


 id |   surname   |  name   |  patronymic   | nationality | date_of_birth | pass_series | pass_num | phone_number | salary  | note 
----+-------------+---------+---------------+-------------+---------------+-------------+----------+--------------+---------+------
  1 | Zvonarev    | Alexey  | Evgenevich    | Russia      | 2000-08-07    |        4542 |   645231 | +79534450975 | 1000000 | 
  2 | Martinovich | Vasiliy | Alexandrovich | Ukraine     | 1997-02-15    |        4554 |   153835 | +79556678475 |  200000 | 
  3 | Arsak       | Sergey  | Evgenevich    | Russia      | 2000-01-25    |        4357 |   895789 | +79842468536 |   50000 | 
  4 | Arilev      | Oleg    | Dmitrievich   | Russia      | 1990-03-03    |        4754 |   785454 | +79086425791 |  100000 | 
  5 | Antonov     | Nikita  | Vasilevich    | Russia      | 1987-11-11    |        4657 |   653354 | +79764741062 |   70000 | 
  6 | Vasilev     | Alexey  | Alexandrovich | Russia      | 1999-01-20    |        4864 |   643431 | +79534459635 |  521000 | 
(6 rows)

--Создание таблицы с работниками

CREATE TABLE employee(id INT, surname VARCHAR, name VARCHAR, patronymic VARCHAR, nationality VARCHAR, date_of_birth DATE, position VARCHAR,experience INT,phone_number VARCHAR,salary FLOAT,PRIMARY KEY(id));

--Заполнение данными

INSERT INTO employee values(1,'Antonov','Alexey','Alexandrovich','Russia','1988-08-07','Manager',3,'+79865645345', 30000.0);
INSERT INTO employee values(2,'Kirzhach','Oleg','Dmitrievich','Russia','1985-06-03','Consultant',1,'+79126437893', 25000.0);
INSERT INTO employee values(3,'Grupin','Sergey','Alexandrovich','Russia','1978-11-25','Manager',4,'+79097534567', 30000.0);
INSERT INTO employee values(4,'Pupin','Alexey','Dmitrievich','Russia','1993-12-11','Manager',0,'+79764893258', 30000.0);
INSERT INTO employee values(5,'Lupin','Vasiliy','Alexandrovich','Russia','1950-03-15','Manager',15,'+79875645345', 40000.0);
INSERT INTO employee values(6,'Kepkin','Anton','Vasilevich','Russia','1999-04-24','IT-Specialist',2,'+7913634543', 100000.0);
INSERT INTO employee values(7,'Petrov','Nikita','Evgenevichh','Russia','1994-08-05','Consultant',3,'+79654358907', 30000.0);
INSERT INTO employee values(8,'Vasilev','Sergey','Evgenevich','Russia','1988-09-22','Manager',6,'+79875365340', 30000.0);

--Вывод данных

SELECT * FROM employee;

 id | surname  |  name   |  patronymic   | nationality | date_of_birth |   position    | experience | phone_number | salary 
----+----------+---------+---------------+-------------+---------------+---------------+------------+--------------+--------
  1 | Antonov  | Alexey  | Alexandrovich | Russia      | 1988-08-07    | Manager       |          3 | +79865645345 |  30000
  2 | Kirzhach | Oleg    | Dmitrievich   | Russia      | 1985-06-03    | Consultant    |          1 | +79126437893 |  25000
  3 | Grupin   | Sergey  | Alexandrovich | Russia      | 1978-11-25    | Manager       |          4 | +79097534567 |  30000
  4 | Pupin    | Alexey  | Dmitrievich   | Russia      | 1993-12-11    | Manager       |          0 | +79764893258 |  30000
  5 | Lupin    | Vasiliy | Alexandrovich | Russia      | 1950-03-15    | Manager       |         15 | +79875645345 |  40000
  6 | Kepkin   | Anton   | Vasilevich    | Russia      | 1999-04-24    | IT-Specialist |          2 | +7913634543  | 100000
  7 | Petrov   | Nikita  | Evgenevichh   | Russia      | 1994-08-05    | Consultant    |          3 | +79654358907 |  30000
  8 | Vasilev  | Sergey  | Evgenevich    | Russia      | 1988-09-22    | Manager       |          6 | +79875365340 |  30000

--Создание таблицы с местами

CREATE TABLE place(id INT, adress VARCHAR, city VARCHAR, country VARCHAR, note TEXT,PRIMARY KEY(id));

--Заполнение данными

INSERT INTO place VALUES(1, '24 Avdeeva street','Moscow','Russia',NULL);
INSERT INTO place VALUES(2, '24 Pushkina street','Sochi','Russia',NULL);
INSERT INTO place VALUES(3, '774 Westminster Avenue','Brooklyn','USA',NULL);

--Вывод данных

SELECT * FROM place;
 id |         adress         |   city   | country | note 
----+------------------------+----------+---------+------
  1 | 24 Avdeeva street      | Moscow   | Russia  | 
  2 | 24 Pushkina street     | Sochi    | Russia  | 
  3 | 774 Westminster Avenue | Brooklyn | USA     | 
(3 rows)

--Создание таблицы с типами операций

CREATE TABLE type_of_operation(id INT, name VARCHAR, percent float, min_months INT, min_sum INT, template tsvector,PRIMARY KEY(id));

--Заполнение данными

INSERT INTO type_of_operation VALUES(1, 'Loan "THE BEST"', 15.4, 84, 10000000, NULL);
INSERT INTO type_of_operation VALUES(2, 'Loan "Strawberry"', 21, 36, 1000000, NULL);
INSERT INTO type_of_operation VALUES(3, 'Loan "Malis"', 22, 36, 500000, NULL);
INSERT INTO type_of_operation VALUES(4, 'Loan "Crawnberry"', 18, 60, 5000000, NULL);
INSERT INTO type_of_operation VALUES(5, 'Loan "Rose"', 24.3, 36, 100000, NULL);
INSERT INTO type_of_operation VALUES(6, 'Loan "Boost"', 27.1, 12, 50000, NULL);
INSERT INTO type_of_operation VALUES(7, 'Contribution "Record"', 5.4, 12, 10000, NULL);
INSERT INTO type_of_operation VALUES(8, 'Contribution "Maximum"', 6.2, 36, 250000, NULL);
INSERT INTO type_of_operation VALUES(9, 'Contribution "Nuts"', 5, 12, 100000, NULL);
INSERT INTO type_of_operation VALUES(10, 'Contribution "Crew"', 7, 48, 500000, NULL);
INSERT INTO type_of_operation VALUES(11, 'Contribution "Money"', 7.1, 60, 1000000, NULL);
INSERT INTO type_of_operation VALUES(12, 'Contribution "Beautiful Life"', 6, 24, 200000, NULL);

--Создание основной таблицы

CREATE TABLE operation(id INT,transID INT,clientID INT, employeeID INT,placeID INT,sum_of_op FLOAT,date_of_op DATE,end_of_op DATE,note TEXT,accepted boolean, PRIMARY KEY(id),FOREIGN KEY(transID) REFERENCES type_of_operation(id),FOREIGN KEY(clientID) REFERENCES clients(id),FOREIGN KEY(employeeID) REFERENCES employee(id),FOREIGN KEY(placeID) REFERENCES place(id));

--Заполнение данными

INSERT INTO operation values(1,3,2,1,1,200000,'2018-11-22','2019-11-22', NULL, true);
INSERT INTO operation values(2,2,1,2,3,50000000,'2018-11-22','2021-11-22', NULL, false);
INSERT INTO operation values(3,4,4,3,3,40000,'2018-11-22','2019-11-22', NULL, true);
INSERT INTO operation values(4,1,3,4,2,7000000,'2018-11-22','2022-11-22', NULL, true);

--//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

--Вывод ФИО и суммы операции

SELECT surname, name, patronymic, sum_of_op FROM operation,clients GROUP BY name,sum_of_op,clients.id,operation.clientID HAVING clients.id=operation.clientID ORDER BY surname,name,patronymic;

   surname   |  name   |  patronymic   | sum_of_op 
-------------+---------+---------------+-----------
 Arilev      | Oleg    | Dmitrievich   |     40000
 Arsak       | Sergey  | Evgenevich    |   7000000
 Martinovich | Vasiliy | Alexandrovich |    200000
 Zvonarev    | Alexey  | Evgenevich    |  50000000
(4 rows)

--Вывод ФИО и места проведения операции

SELECT surname, name, patronymic,place FROM operation,clients,place GROUP BY name,operation.placeID,operation.clientID,surname,patronymic,place,clients.id,place.id HAVING (clients.id=operation.clientID) AND (place.id=operation.placeID) ORDER BY place;

 surname   |  name   |  patronymic   |                   place                    
-------------+---------+---------------+--------------------------------------------
 Martinovich | Vasiliy | Alexandrovich | (1,"24 Avdeeva street",Moscow,Russia,)
 Arsak       | Sergey  | Evgenevich    | (2,"24 Pushkina street",Sochi,Russia,)
 Zvonarev    | Alexey  | Evgenevich    | (3,"774 Westminster Avenue",Brooklyn,USA,)
 Arilev      | Oleg    | Dmitrievich   | (3,"774 Westminster Avenue",Brooklyn,USA,)
(4 rows)

--Вывод клиентов с фамилией начинающейся с буквы А

SELECT surname, name, patronymic FROM clients WHERE surname LIKE 'A%';

 surname |  name  | patronymic  
---------+--------+-------------
 Arsak   | Sergey | Evgenevich
 Arilev  | Oleg   | Dmitrievich
 Antonov | Nikita | Vasilevich
(3 rows)

--Вывод средней суммы всех операций

SELECT avg(sum_of_op) as avg_sum FROM operation;

 avg_sum  
----------
 14310000
(1 row)

--Вывод операций, которые закончатся с 2020-01-01 до 2025-01-01

SELECT id,end_of_op FROM operation WHERE end_of_op BETWEEN '2020-01-01' AND '2025-01-01' ORDER BY end_of_op ASC;

 id | end_of_op  
----+------------
  2 | 2021-11-22
  4 | 2022-11-22
(2 rows)

--Вывод общей суммы операций, которые закончатся с 2020-01-01 до 2025-01-01

WITH tmp_table AS (SELECT id,end_of_op,sum_of_op FROM operation WHERE end_of_op BETWEEN '2020-01-01' AND '2025-01-01') SELECT SUM(sum_of_op) as avg_sum_2015_2017_ FROM tmp_table;

 avg_sum_2015_2017_ 
--------------------
           57000000
(1 row)

--Вывод ФИО и суммы операции (клиенты, сумма операций которых больше 200000, но меньше 10000000)

SELECT surname, name, patronymic, sum_of_op FROM clients,operation WHERE (clients.id=operation.clientID) AND (sum_of_op BETWEEN 200000 AND 10000000);

   surname   |  name   |  patronymic   | sum_of_op 
-------------+---------+---------------+-----------
 Martinovich | Vasiliy | Alexandrovich |    200000
 Arsak       | Sergey  | Evgenevich    |   7000000
(2 rows)

--Кол-во людей, чьи заявки были одобрены

SELECT COUNT(clientID) FROM operation WHERE accepted = true;

 count 
-------
     3
(1 row)

--Кол-во проведенных операций каждым работником(который проводил хотя бы одну операцию)

SELECT surname, name, patronymic, COUNT(operation.id) OVER (PARTITION BY employeeID) FROM operation,employee WHERE employee.id=operation.employeeid GROUP BY operation.id,surname, name, patronymic,operation.employeeid,employee.id;

 surname  |  name  |  patronymic   | count 
----------+--------+---------------+-------
 Antonov  | Alexey | Alexandrovich |     1
 Kirzhach | Oleg   | Dmitrievich   |     1
 Grupin   | Sergey | Alexandrovich |     1
 Pupin    | Alexey | Dmitrievich   |     1
(4 rows)

--ФИО и телефон людей, которым было отказано в операции(чтобы позвонить и оповестить)

SELECT surname, name, patronymic,phone_number,accepted FROM operation,clients WHERE (clients.id=operation.clientID) AND (accepted = false);

 surname  |  name  | patronymic | phone_number | accepted 
----------+--------+------------+--------------+----------
 Zvonarev | Alexey | Evgenevich | +79534450975 | f
(1 row)

