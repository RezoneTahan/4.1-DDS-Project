
DROP TABLE DONOR2 CASCADE CONSTRAINTS;
DROP TABLE RECIPIENT2 CASCADE CONSTRAINTS;
DROP TABLE BLOOD_INVENTORY2 CASCADE CONSTRAINTS;
DROP TABLE DONATION_DETAILS2 CASCADE CONSTRAINTS;

DROP SEQUENCE system.donor_sequence2; 
DROP SEQUENCE system.recip_sequence2; 
DROP SEQUENCE system.blinven_sequence2; 
DROP SEQUENCE system.dondet_sequence2; 

create table DONOR2
(
	DID number not null primary key,
	Dname varchar2(40),
	Dage number, 
	Dgender varchar2(6),
	Dbloodgroup varchar2(10),
	Darea varchar2(30),
	Daddress varchar2(100),
	Dphonenum varchar2(100),
	Deligibility  varchar2(4)
);
	
Create sequence donor_sequence2 start with 1
increment by 1
minvalue 1
maxvalue 10000;
	
	
CREATE TABLE RECIPIENT2 (
	RID number, 
	Rname varchar2(100), 
	Rage number, 
	Rgender varchar2(30), 
	Rbloodgroup char(3), 
	Raddress varchar2(30), 
	Rphonenum varchar2(30), 
	DID number,
    PRIMARY KEY(RID)
); 

Create sequence recip_sequence2 start with 5001
increment by 1
minvalue 5001
maxvalue 10000;

CREATE TABLE BLOOD_INVENTORY2
(
	DID number,
	bagnumber int, 
	heamoglobin number,
	platelets number,
    PRIMARY KEY(bagnumber)	
); 

Create sequence blinven_sequence2 start with 2001
increment by 1
minvalue 2001
maxvalue 10000;

CREATE TABLE DONATION_DETAILS2
(
	DID number,
	donationnumber number, 
	hospital varchar2(100), 
	amount number,
	givenat date,
    PRIMARY KEY(donationnumber)	
); 

Create sequence dondet_sequence2 start with 1001
increment by 1
minvalue 1001
maxvalue 10000;


insert into DONOR2 values(donor_sequence.nextval,'Ashiq',20,'Male','AB-','Rampura','24 Rampura','01710000000','Yes');
insert into DONOR2 values(donor_sequence.nextval,'Shonia',25,'Female','B-','Banani','5/4 Kings Landing','01919999999','No');
insert into DONOR2 values(donor_sequence.nextval,'Samin',22,'Male','A+','Banasree','100 Hufflepuff Hogwarts', '0167666666','Yes');
insert into DONOR2 values(donor_sequence.nextval,'Naida',21,'Female','AB+','Iskaton','67 BNP Office', '01275347688','Yes');
insert into DONOR2 values(donor_sequence.nextval,'Abir',40,'Male','B+','Mirpur-1','58 Cantonment','420420420420','No');
insert into DONOR2 values(donor_sequence.nextval,'Sanjana',30,'Female','A+','Rampura','24/5 DIT Road', '123123123123','No');
insert into DONOR2 values(donor_sequence.nextval,'Sabbir',25,'Male','B-','Mirpur','123 East of Nowhere', '54708653688','Yes');
insert into DONOR2 values(donor_sequence.nextval,'Nawrin',45,'Female','A-','Tejgaon','7A05 LV Road', '705703706','Yes');
insert into DONOR2 values(donor_sequence.nextval,'Nusrat',32,'Male','O+','Panthapath','98 South Panthapath', '989898989898','No');
insert into DONOR2 values(donor_sequence.nextval,'Tania',27,'Female','O-','Firmgate','Firmgate Bridge', '006006006006','No');


insert into RECIPIENT2 values(recip_sequence.nextval, 'Abdullah', 25, 'Male', 'B+','34 Dhanmondi','0123436747', 5); 
insert into RECIPIENT2 values(recip_sequence.nextval, 'Samiha', 22, 'Female', 'AB+','6/D Basundhara','367373224', 4);
insert into RECIPIENT2 values(recip_sequence.nextval, 'Rifat', 35, 'Male', 'AB-','36 Banani','45648585', 1);
insert into RECIPIENT2 values(recip_sequence.nextval, 'Sabbir', 40, 'Male', 'B-','4/C Mirpur','56658585', 2);
insert into RECIPIENT2 values(recip_sequence.nextval, 'Sumaya', 21, 'Female', 'O+','3-B Gulshan','23425266', 9);
insert into RECIPIENT2 values(recip_sequence.nextval, 'Oishy', 27, 'Female', 'A+','3 Rampura','567567557', 3);
insert into RECIPIENT2 values(recip_sequence.nextval, 'Obonti', 32, 'Female', 'A+','45 B Badda','1225366666', 6);
insert into RECIPIENT2 values(recip_sequence.nextval, 'Sami', 38, 'Male', 'A-','14/D Uttara','68696968', 8);
insert into RECIPIENT2 values(recip_sequence.nextval, 'Siam', 45, 'Male', 'O-','C 3 Khilgaon','3453647768', 10);
insert into RECIPIENT2 values(recip_sequence.nextval, 'Nayem', 20, 'Male', 'B-','5/D Shantinagar','253647768', 7);


insert into  BLOOD_INVENTORY2 (DID, bagnumber,  heamoglobin,  platelets) values (11, blinven_sequence.nextval,  17, 61);
insert into  BLOOD_INVENTORY2 (DID, bagnumber,  heamoglobin,  platelets) values (12, blinven_sequence.nextval,  15, 49);
insert into  BLOOD_INVENTORY2 (DID, bagnumber,  heamoglobin,  platelets) values (13, blinven_sequence.nextval,  10, 65);
insert into  BLOOD_INVENTORY2 (DID, bagnumber,  heamoglobin,  platelets) values (14, blinven_sequence.nextval,  12, 50);
insert into  BLOOD_INVENTORY2 (DID, bagnumber,  heamoglobin,  platelets) values (15, blinven_sequence.nextval,  14, 55);
insert into  BLOOD_INVENTORY2 (DID, bagnumber,  heamoglobin,  platelets) values (16, blinven_sequence.nextval,  14, 55); 
insert into  BLOOD_INVENTORY2 (DID, bagnumber,  heamoglobin,  platelets) values (17, blinven_sequence.nextval,  15, 52);
insert into  BLOOD_INVENTORY2 (DID, bagnumber,  heamoglobin,  platelets) values (18, blinven_sequence.nextval,  16, 56);
insert into  BLOOD_INVENTORY2 (DID, bagnumber, heamoglobin,   platelets) values (19, blinven_sequence.nextval,  18, 59);
insert into  BLOOD_INVENTORY2 (DID, bagnumber,  heamoglobin,  platelets) values (20, blinven_sequence.nextval,  14, 45);


insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (11, dondet_sequence.nextval, 'Bangladesh Heart and Chest Hospital', 3, TO_DATE('2012-11-5','yyyy/mm/dd')); 
insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (12, dondet_sequence.nextval, 'Bangladesh Medical College', 1, TO_DATE('2018-1-21','yyyy/mm/dd')); 
insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (13, dondet_sequence.nextval, 'Central Hospital Ltd.', 1, TO_DATE('2016-9-13','yyyy/mm/dd')); 
insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (14, dondet_sequence.nextval, 'Islami Bank Hospital', 3, TO_DATE('2017-6-27','yyyy/mm/dd')); 
insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (15, dondet_sequence.nextval, 'City Hospital Ltd', 2, TO_DATE('2017-10-4','yyyy/mm/dd')); 
insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (16, dondet_sequence.nextval, 'Ad-Din Hospital', 2, TO_DATE('2018-02-03','yyyy/mm/dd')); 
insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (17, dondet_sequence.nextval, 'Shahid Suhrawardy Hospital', 3, TO_DATE('2015-11-22','yyyy/mm/dd')); 
insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (18, dondet_sequence.nextval, 'Al- Helal Speacialist Hospital', 1, TO_DATE('2010-1-10','yyyy/mm/dd')); 
insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (19, dondet_sequence.nextval, 'Appolo Hospital', 2, TO_DATE('2014-2-14','yyyy/mm/dd')); 
insert into DONATION_DETAILS2 (DID, donationnumber, hospital, amount, givenat) values (20, dondet_sequence.nextval, 'Bangabandhu Shiekh Mujib Medical University', 4, TO_DATE('2015-4-16','yyyy/mm/dd')); 
select *from DONOR2;
select *from RECIPIENT2;
select *from BLOOD_INVENTORY2;
select *from DONATION_DETAILS2;
commit;