REM INSERTING into RECORD
SET DEFINE OFF;
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('1','Pink Floyd','Dark Side Of The Moon',to_date('01.01.73','DD.MM.RR'),'prog','300');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('2','Steven Wilson','Hand. Cannot. Erase.',to_date('01.01.15','DD.MM.RR'),'prog','450');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('3','Adele','21',to_date('01.01.11','DD.MM.RR'),'pop','280');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('4','Opeth','Blackwater Park',to_date('01.01.01','DD.MM.RR'),'death metal','330');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('5','Led Zeppelin','IV',to_date('01.01.71','DD.MM.RR'),'rock','390');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('6','King Crimson','Red',to_date('01.01.74','DD.MM.RR'),'prog','460');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('7','Pink Floyd','Pulse',to_date('01.01.95','DD.MM.RR'),'prog','700');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('8','Camel','Snow Goose',to_date('01.01.75','DD.MM.RR'),'prog','480');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('9','The Beatles','Abbey Road',to_date('01.01.69','DD.MM.RR'),'classic rock','390');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('10','Steven Wilson','Get All You Deserve',to_date('01.01.12','DD.MM.RR'),'prog','680');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('11','Porcupine Tree','Arriving Somewhere',to_date('01.01.05','DD.MM.RR'),'prog','550');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('12','Led Zeppelin','Live At Earls Court',to_date('01.01.74','DD.MM.RR'),'hard rock','500');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('13','Roger Waters','The Wall',to_date('01.01.15','DD.MM.RR'),'prog','600');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('14','Porcupine Tree','Deadwing',to_date('01.01.05','DD.MM.RR'),'prog','400');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('15','Metallica','And Justice For All',to_date('01.01.88','DD.MM.RR'),'thrash metal','500');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('16','King Crimson','In the Court Of The Crimson King',to_date('01.01.69','DD.MM.RR'),'prog','480');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('17','Tesseract','One',to_date('01.01.11','DD.MM.RR'),'math metal','300');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('18','iamthemorning','Lighthouse',to_date('01.01.16','DD.MM.RR'),'prog','390');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('19','Rush','Moving Pictures',to_date('01.01.81','DD.MM.RR'),'hard rock','400');
Insert into RECORD (RID,ARTIST,ALBUM,YEAR,GENRE,PRICE) values ('20','Anathema','Weather Systems',to_date('01.01.13','DD.MM.RR'),'alternative','450');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into CD
SET DEFINE OFF;
Insert into CD (RID,FORMAT) values ('1','audio CD');
Insert into CD (RID,FORMAT) values ('3','audio CD');
Insert into CD (RID,FORMAT) values ('4','deluxe edition');
Insert into CD (RID,FORMAT) values ('5','audio CD');
Insert into CD (RID,FORMAT) values ('8','deluxe edition');
Insert into CD (RID,FORMAT) values ('9','audio CD');
Insert into CD (RID,FORMAT) values ('14','audio CD');
Insert into CD (RID,FORMAT) values ('15','audio CD');
Insert into CD (RID,FORMAT) values ('17','deluxe edition');
Insert into CD (RID,FORMAT) values ('19','deluxe edition');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into DVD
SET DEFINE OFF;
Insert into DVD (RID,FORMAT) values ('7','DVD5');
Insert into DVD (RID,FORMAT) values ('12','DVD5');
Insert into DVD (RID,FORMAT) values ('13','Blu-ray');
Insert into DVD (RID,FORMAT) values ('10','Blu-ray');
Insert into DVD (RID,FORMAT) values ('11','DVD9');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into VINYL
SET DEFINE OFF;
Insert into VINYL (RID,WEIGHT,SPEED) values ('2','80','33');
Insert into VINYL (RID,WEIGHT,SPEED) values ('6','120','33');
Insert into VINYL (RID,WEIGHT,SPEED) values ('20','100','33');
Insert into VINYL (RID,WEIGHT,SPEED) values ('16','90','45');
Insert into VINYL (RID,WEIGHT,SPEED) values ('18','80','33');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into SHOP
SET DEFINE OFF;
Insert into SHOP (SID,ADDRESS,TELEPHONE) values ('1','Dejvicka','123456789');
Insert into SHOP (SID,ADDRESS,TELEPHONE) values ('2','Vaclavske namesti','345345345');
Insert into SHOP (SID,ADDRESS,TELEPHONE) values ('3','Hradcanska','789789789');
Insert into SHOP (SID,ADDRESS,TELEPHONE) values ('4','Holeshovice','890789678');
Insert into SHOP (SID,ADDRESS,TELEPHONE) values ('5','Strahov','354353454');


--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into RECLIST
SET DEFINE OFF;
Insert into RECLIST (LID,SHOP_SID) values ('1','1');
Insert into RECLIST (LID,SHOP_SID) values ('2','2');
Insert into RECLIST (LID,SHOP_SID) values ('3','3');
Insert into RECLIST (LID,SHOP_SID) values ('4','4');
Insert into RECLIST (LID,SHOP_SID) values ('5','5');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into LITEM
SET DEFINE OFF;
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('2','1','1');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('4','1','2');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('2','1','5');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('1','1','6');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('1','1','17');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('4','2','5');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('5','2','1');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('6','2','3');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('4','2','13');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('3','3','4');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('2','3','15');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('11','3','3');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('5','4','20');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('4','4','9');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('2','4','10');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('10','5','19');
Insert into LITEM (AMOUNT,RECLIST_LID,RECORD_RID) values ('2','5','17');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into EMPLOYEE
SET DEFINE OFF;
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('1','John','Watson',to_date('12.12.92','DD.MM.RR'),'20000','1');
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('2','Jeffrey ','Connor',to_date('23.01.68','DD.MM.RR'),'40000','2');
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('3','Ivan','Drago',to_date('19.04.79','DD.MM.RR'),'20000','1');
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('4','Ken','Kross',to_date('21.06.77','DD.MM.RR'),'30000','2');
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('5','Steven ','Hawking',to_date('11.03.90','DD.MM.RR'),'23000','3');
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('6','Lawrence','Kennedy',to_date('07.08.89','DD.MM.RR'),'20000','4');
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('7','Morris','Smith',to_date('20.06.70','DD.MM.RR'),'30000','4');
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('8','James','Hetfield',to_date('03.11.63','DD.MM.RR'),'40000','5');
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('9','Josef','Lee',to_date('02.04.86','DD.MM.RR'),'30000','3');
Insert into EMPLOYEE (EID,NAME,SURNAME,BIRTHDATE,SALARY,SHOP_SID) values ('10','Daniel','Tompkins',to_date('30.03.82','DD.MM.RR'),'30000','5');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into MANAGER
SET DEFINE OFF;
Insert into MANAGER (EMPLOYEE_EID,SHOP_SID) values ('1','1');
Insert into MANAGER (EMPLOYEE_EID,SHOP_SID) values ('2','2');
Insert into MANAGER (EMPLOYEE_EID,SHOP_SID) values ('8','5');
Insert into MANAGER (EMPLOYEE_EID,SHOP_SID) values ('5','3');
Insert into MANAGER (EMPLOYEE_EID,SHOP_SID) values ('7','4');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into CARD
SET DEFINE OFF;
Insert into CARD (TYPE,DISCOUNT) values ('bronze','5');
Insert into CARD (TYPE,DISCOUNT) values ('silver','10');
Insert into CARD (TYPE,DISCOUNT) values ('gold','15');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into CUSTOMER
SET DEFINE OFF;
Insert into CUSTOMER (CID,NAME) values ('1','Michael Bailey');
Insert into CUSTOMER (CID,NAME) values ('2','Robert Fripp');
Insert into CUSTOMER (CID,NAME) values ('3','Gavin Hariss');
Insert into CUSTOMER (CID,NAME) values ('4','Fred Okesson');
Insert into CUSTOMER (CID,NAME) values ('5','Colin Edwin');
Insert into CUSTOMER (CID,NAME) values ('6','Nick Drake');
Insert into CUSTOMER (CID,NAME) values ('7','John Wesley');
Insert into CUSTOMER (CID,NAME) values ('8','Nick Beggs');
Insert into CUSTOMER (CID,NAME) values ('9','Sylvia Platt');
Insert into CUSTOMER (CID,NAME) values ('10','Ester Greenwood');
Insert into CUSTOMER (CID,NAME) values ('11','Jeff Loomis');
Insert into CUSTOMER (CID,NAME) values ('12','Steven Morse');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into CARDHOLDER
SET DEFINE OFF;
Insert into CARDHOLDER (ADDRESS,TELEPHONE,EMAIL,MONEYSPENT,CUSTOMER_CID,CARD_TYPE) values ('Dejvicka','93847534','gavin@mail.com','1000','3','bronze');
Insert into CARDHOLDER (ADDRESS,TELEPHONE,EMAIL,MONEYSPENT,CUSTOMER_CID,CARD_TYPE) values ('Thakurova','35435345','fripp@mail.com','5000','2','silver');
Insert into CARDHOLDER (ADDRESS,TELEPHONE,EMAIL,MONEYSPENT,CUSTOMER_CID,CARD_TYPE) values ('Strahov','43536346','platt@mail.com','3000','9','silver');
Insert into CARDHOLDER (ADDRESS,TELEPHONE,EMAIL,MONEYSPENT,CUSTOMER_CID,CARD_TYPE) values ('Hradcany','98345943','beggs@mail.com','10000','8','gold');
Insert into CARDHOLDER (ADDRESS,TELEPHONE,EMAIL,MONEYSPENT,CUSTOMER_CID,CARD_TYPE) values ('Zlicin','43054350','lomis@mail.com','7000','11','gold');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into PURCHASE
SET DEFINE OFF;
Insert into PURCHASE (PID,"Date",PRICE,CUSTOMER_CID) values ('1',to_date('01.12.16','DD.MM.RR'),'380','1');
Insert into PURCHASE (PID,"Date",PRICE,CUSTOMER_CID) values ('2',to_date('04.12.16','DD.MM.RR'),'700','3');
Insert into PURCHASE (PID,"Date",PRICE,CUSTOMER_CID) values ('3',to_date('02.12.16','DD.MM.RR'),'400','2');
Insert into PURCHASE (PID,"Date",PRICE,CUSTOMER_CID) values ('4',to_date('30.11.16','DD.MM.RR'),'500','5');
Insert into PURCHASE (PID,"Date",PRICE,CUSTOMER_CID) values ('5',to_date('03.12.16','DD.MM.RR'),'1200','6');
Insert into PURCHASE (PID,"Date",PRICE,CUSTOMER_CID) values ('6',to_date('29.11.16','DD.MM.RR'),'5000','8');
Insert into PURCHASE (PID,"Date",PRICE,CUSTOMER_CID) values ('7',to_date('05.12.16','DD.MM.RR'),'340','12');
Insert into PURCHASE (PID,"Date",PRICE,CUSTOMER_CID) values ('8',to_date('04.12.16','DD.MM.RR'),'900','5');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into PITEM
SET DEFINE OFF;
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('1','1','1','1');
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('3','2','13','2');
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('1','4','20','3');
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('2','3','4','4');
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('5','1','2','5');
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('1','1','1','6');
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('2','3','15','3');
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('1','5','19','7');
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('1','1','5','8');
Insert into PITEM (AMOUNT,LITEM_RECLIST_LID,LITEM_RECORD_RID,PURCHASE_PID) values ('1','2','3','2');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into "ORDER"
SET DEFINE OFF;
Insert into "ORDER" (OID,"Date",SHIPDATE,CUSTOMER_CID) values ('1',to_date('28.11.16','DD.MM.RR'),to_date('01.12.16','DD.MM.RR'),'4');
Insert into "ORDER" (OID,"Date",SHIPDATE,CUSTOMER_CID) values ('2',to_date('24.11.16','DD.MM.RR'),to_date('02.12.16','DD.MM.RR'),'2');
Insert into "ORDER" (OID,"Date",SHIPDATE,CUSTOMER_CID) values ('3',to_date('01.12.16','DD.MM.RR'),to_date('04.12.16','DD.MM.RR'),'7');
Insert into "ORDER" (OID,"Date",SHIPDATE,CUSTOMER_CID) values ('4',to_date('02.12.16','DD.MM.RR'),to_date('05.12.16','DD.MM.RR'),'9');
Insert into "ORDER" (OID,"Date",SHIPDATE,CUSTOMER_CID) values ('5',to_date('01.12.16','DD.MM.RR'),to_date('06.12.16','DD.MM.RR'),'10');
Insert into "ORDER" (OID,"Date",SHIPDATE,CUSTOMER_CID) values ('6',to_date('04.12.16','DD.MM.RR'),to_date('08.12.16','DD.MM.RR'),'11');
Insert into "ORDER" (OID,"Date",SHIPDATE,CUSTOMER_CID) values ('7',to_date('02.12.16','DD.MM.RR'),to_date('05.12.16','DD.MM.RR'),'2');
Insert into "ORDER" (OID,"Date",SHIPDATE,CUSTOMER_CID) values ('8',to_date('03.12.16','DD.MM.RR'),to_date('12.12.16','DD.MM.RR'),'11');

--------------------------------------------------------
--  File created - воскресенье-декабря-04-2016   
--------------------------------------------------------
REM INSERTING into OITEM
SET DEFINE OFF;
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('1','2','1');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('2','20','1');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('1','6','1');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('2','18','2');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('1','3','2');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('1','7','3');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('1','2','4');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('1','4','4');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('1','14','5');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('3','9','6');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('2','11','7');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('1','17','7');
Insert into OITEM (AMOUNT,RECORD_RID,ORDER_OID) values ('1','18','8');