--Simple (positive) query with at least two joined tables (list of patients - name, address who were examined by doctor Braun)

--Select names of employees who work in Dejvicka shop
--d1
SELECT employee.NAME,employee.surname
FROM employee JOIN shop ON (employee.sid=shop.sid)
WHERE (shop.address = 'Dejvicka');

--B	d6 	Simple (negative) query (list of patients - name, address who were not visiting doctor Braun) (select all doctors who had patients,...)

--Select all customers who had purchases
--d2
SELECT DISTINCT customer.name
FROM customer JOIN purchase ON(purchase.cid=customer.cid);

--C	d7 d22 	Choose all records, which have relation for "X" only …(list of patients - name, address who were examined by doctor Braun ONLY - the patients didn't have visit at another doctor).

--List of records that are only in Dejvicka shop
--d3
SELECT record.artist, record.album
FROM record JOIN litem ON(litem.rid=record.rid)
JOIN reclist ON (litem.lid = reclist.lid)
JOIN shop ON (reclist.sid = shop.sid)
WHERE (shop.address = 'Dejvicka')
MINUS
SELECT record.artist, record.album
FROM record JOIN litem ON(litem.rid=record.rid)
JOIN reclist ON (litem.lid = reclist.lid)
JOIN shop ON (reclist.sid = shop.SID)
WHERE (shop.address != 'Dejvicka');

--D1	d8 	Select all records which are at the relation with all.General quantified query (list of doctors - name, address who were visited by EACH patient, who visited doctor Braun)

--Select records (Artist and album) that are represented in each shop (list)
--d4
WITH 
r AS (SELECT DISTINCT rid FROM litem), --list of records saled
s AS (SELECT DISTINCT lid FROM litem), --list of shops
universe AS (SELECT * FROM r CROSS JOIN s), -- all possible variants (each record is on sale in each shop)
nothappen AS (SELECT * FROM universe MINUS (SELECT rid, lid FROM litem)) --not in each store
SELECT record.artist, record.album 
FROM (SELECT*FROM(SELECT * FROM r) MINUS (SELECT rid FROM nothappen))
JOIN record USING(rid);



--D2	d8 	The result validity check from category D1. For example if query {list of teachers, who had lecture during ALL semesters begin at winter 2001/2002 till summer semester 2008/2008 included} shows the teacher "123 Josef Pavlicek", so the validity check will be query {{list of all semester at the season, where was teaching Pavlicek }\ (minus){list of all semester at the season}} and the result must be empty

--{{list of all shops, where Pink Floyd's Dark Side of The Moon is saled }\ (minus){list of all shops}}
--d5
WITH 
r AS (SELECT DISTINCT rid FROM litem), --list of records saled
s AS (SELECT DISTINCT lid FROM litem), --list of shops
universe AS (SELECT * FROM r CROSS JOIN s), -- all possible variants (each record is on sale in each shop)
nothappen AS (SELECT * FROM universe MINUS (SELECT rid, lid FROM litem)), --not in each store
allrec AS (SELECT record.artist, record.album 
FROM (SELECT*FROM(SELECT * FROM r) MINUS (SELECT rid FROM nothappen))
JOIN record USING(rid))

SELECT DISTINCT lid 
FROM (litem JOIN record USING(rid)) WHERE (artist IN (SELECT artist FROM allrec) AND album IN (SELECT album FROM allrec))
MINUS
SELECT DISTINCT lid FROM litem;

--F1	d3 	join - JOIN ON

--A

--F2	d2 	NATURAL JOIN | JOIN USING

--D4

--F3	d8 	CROSS JOIN

--D4

--F4	d11 	LEFT | RIGHT OUTER JOIN

--Customers, who ordered something but did not purchase anything
--d6
SELECT customer.NAME FROM customer
WHERE (customer.cid NOT IN (SELECT purchase.cid FROM purchase)
AND customer.cid IN (SELECT ord.cid FROM ord));

--left outer join formulation
WITH
cusorder AS (SELECT DISTINCT cid FROM ord),
cusnotpur AS (SELECT * FROM(SELECT customer.cid AS c1, pid 
FROM customer LEFT OUTER JOIN purchase ON (customer.cid = purchase.cid)
) WHERE (COALESCE(pid, 0) = 0))
SELECT customer.NAME FROM
((SELECT * FROM cusorder) INTERSECT (SELECT c1 FROM cusnotpur))
JOIN 
customer USING (cid);

--formulation with exists

WITH cusnotpur AS (SELECT customer.cid FROM customer
WHERE NOT EXISTS(SELECT 1 FROM purchase WHERE (customer.cid = purchase.cid))),
ordercus AS (SELECT customer.cid FROM customer 
WHERE EXISTS (SELECT 1 FROM ord WHERE (customer.cid = ord.cid)))
SELECT * FROM (SELECT * FROM cusnotpur INTERSECT (SELECT * FROM ordercus))
JOIN customer USING (cid);



--F5	d21 	FULL (OUTER) JOIN

--Customers who have both orders and purchases
--d7
SELECT DISTINCT customer.NAME FROM 
customer FULL OUTER JOIN purchase USING (cid)
FULL OUTER JOIN ord USING (cid)
WHERE (pid IS NOT NULL AND OID IS NOT NULL);

--G1	d8 d23 d24 	Subquery inside WHERE

--Records that were not ordered from 2.12.16 to 4.12.16
--d8
SELECT artist, album, orddate FROM record 
JOIN 
(SELECT rid, OID FROM oitem 
WHERE (oitem.OID NOT IN 
(SELECT OID FROM ord WHERE (orddate > '1.12.16' AND orddate < '5.12.16'))))
USING (rid)
JOIN ord USING (OID);

--G2	d18 	Subquery inside FROM

--d6

--G3	Subquery inside SELECT
--d9

--Customers list. For each customer find the count of orders he made.

SELECT customer.NAME, (SELECT count(*) FROM ord WHERE ord.cid = customer.cid ) FROM customer;

--G4	d18 d3 	Correlated subquery (EXISTS | NOT EXISTS)

--d6

--H1	d5 	Set union query - UNION

--d10

--List of all people in the database 

SELECT NAME FROM customer
UNION
SELECT surname FROM employee;

--H2	d6 	Set substraction query - EXCEPT or MINUS (v Oracle)
 --d4

--C, D1, D2

--Set intersection - INTERSECT

--F4 --d6

--I1	d11 	Aggregation functions (count | sum | min | max| avg)

--G3

--I2	d14 d15 	Aggregations with GROUP BY (HAVING) clause

--Display the amount of records for each genre
--d11
SELECT record.genre, count(rid) AS countrecord FROM record GROUP BY record.genre;

--J	d6 d8 	The same query using three different formulations in SQL

--F4 --d6

--K	d15 	All select clauses - SELECT FROM WHERE GROUP BY HAVING ORDER BY

--Select cd records with audio format audio cd, which were bought more than once. Order the list by ascending the price.

--d12
WITH 
cdbought AS (SELECT rid FROM 
((SELECT rid FROM cd WHERE (format = 'audio CD'))
JOIN pitem USING(rid)))

SELECT * FROM (SELECT rid, count (rid) FROM (SELECT * FROM cdbought) GROUP BY rid
HAVING (count(rid) > 1)) JOIN record USING (rid) ORDER BY (price);


--L	d19 	Make VIEW
--d13
--Records that are available in dejvicka shop
DROP VIEW dejvickashopstorage;
CREATE VIEW dejvickashopstorage AS 
WITH
dlist AS (SELECT lid FROM reclist JOIN shop USING (sid)
WHERE (address = 'Dejvicka'))
SELECT artist, album, YEAR, genre, price, purdate, name FROM 
(SELECT * FROM litem WHERE (lid IN (SELECT * FROM dlist)))
JOIN 
record USING (rid)
JOIN
(SELECT pid, rid FROM pitem) USING (rid)
JOIN 
(SELECT purdate, pid, cid FROM purchase) USING (pid)
JOIN 
(SELECT cid, NAME FROM customer) USING (cid);


--M	d19 	View used query

--Calculate the summary profit of the Dejvicka store
--d14
SELECT sum(price) FROM dejvickashopstorage;

--N	d8a 	Insert statement for inserting list of records - INSERT without clause VALUES use, for example ( add customer ID 6 all green boats reservation for all needed time intervals)

--Order each vinyl record for customer 
--d15

INSERT INTO ord (cid, oid, shipdate, orddate)
SELECT 1,9,to_date('01.01.01','DD.MM.RR'), to_date('01.01.01','DD.MM.RR')
FROM dual;
INSERT INTO oitem (amount, rid, oid)
SELECT 1, rid, 9 FROM vinyl;

--

--O	d16 	UPDATE statement with subquery in WHERE/SET

--increase the salary of employees in a shops that have less than 3 employees
--d16
UPDATE employee
  SET salary = salary * 1.5 
  WHERE (sid IN (SELECT sid FROM employee GROUP BY (sid)
  HAVING count(eid) < 2));


--P	d17 	DELETE statement with subquery in WHERE clause
DELETE FROM oitem
WHERE ((amount, rid, OID)
IN (SELECT 1, rid, 9 FROM vinyl));

DELETE FROM ord
WHERE ((cid, OID, shipdate, orddate)
IN (SELECT 1,9,to_date('01.01.01','DD.MM.RR'),to_date('01.01.01','DD.MM.RR')
FROM dual));

