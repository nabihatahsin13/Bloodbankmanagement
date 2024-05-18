CREATE DATABASE  BLOODBANK;
USE BLOODBANK;
CREATE TABLE BB_MANAGER (
  M_id int NOT NULL   PRIMARY KEY,
  mName varchar(100) NOT NULL,
  m_phNo bigint 
  );
  INSERT INTO  BB_MANAGER
VALUES (101, 'Vatsalya', 9693959671), 
       (102, 'Vicky', 9693959672), 
       (103, 'Light', 9693959673), 
       (104, 'Eren', 9693959674), 
       (105, 'Mikasa', 9693959675), 
       (106, 'Goku', 9693959676), 
       (107, 'Itachi', 9693959677), 
       (108, 'Naruto', 9693959678), 
       (109, 'Luffy', 9693959679), 
       (110, 'Levi', 9693959680);
       SELECT*
       FROM  BB_MANAGER;
CREATE TABLE recording_staff (
  reco_ID int NOT NULL,
  reco_Name varchar(100) NOT NULL,
  reco_phNo bigint DEFAULT NULL,
  PRIMARY KEY (reco_ID)
);
INSERT INTO recording_staff
VALUES (101012, 'Tanjiro', 4044846553), 
       (101112, 'Zenitsu', 4045856553), 
       (101212, 'Inosuke', 4045806553), 
       (101312, 'Mitsuri', 4045806553), 
       (101412, 'Nezuko', 4045806553), 
       (101512, 'Muzan', 4045806553), 
       (101612, 'Akaza', 4045806553), 
       (101712, 'Tengen', 4045816553), 
       (101812, 'Rengoku', 4045826553), 
       (101912, 'Kokushibo', 4045836553);
       SELECT*
       FROM recording_staff;
CREATE TABLE city (
  City_ID int NOT NULL,
  City_name varchar(100) NOT NULL,
  PRIMARY KEY (City_ID)
);
INSERT INTO city 
VALUES (1100, 'Asgard'), 
       (1200, 'Paradis'), 
       (1300, 'Marley'), 
       (1400, 'Wakanda'), 
       (1500, 'Valhalla'), 
       (1600, 'Madripoor'), 
       (1700, 'Hogwarts'), 
       (1800, 'Sokovia'), 
       (1900, 'Kamar-Taj'), 
       (2000, 'Gotham');
       SELECT*
       FROM city;
CREATE TABLE blood_donor (
  bd_ID int NOT NULL,
  bd_name varchar(100) NOT NULL,
  bd_age varchar(100) DEFAULT NULL,
  bd_sex varchar(100) DEFAULT NULL,
  bd_Bgroup varchar(10) DEFAULT NULL,
  bd_reg_date date DEFAULT NULL,
  reco_ID int NOT NULL,
  City_ID int NOT NULL,
  PRIMARY KEY (bd_ID),
FOREIGN KEY (reco_ID) REFERENCES recording_staff (reco_ID),
FOREIGN KEY (City_ID) REFERENCES city (City_ID)
);
INSERT INTO blood_donor 
VALUES (150011, 'Steven', '25', 'M', 'O+', '2015-07-19', 101412, 1100), 
       (150012, 'Tony', '35', 'M', 'A-', '2015-12-24', 101412, 1100), 
       (150013, 'Bruce', '22', 'M', 'AB+', '2015-08-28', 101212, 1200), 
       (150014, 'Natasha', '29', 'M', 'B+', '2015-12-17', 101212, 1300), 
       (150015, 'Hermoine', '42', 'M', 'A+', '2016-11-22', 101212, 1300), 
       (150016, 'Harry', '44', 'F', 'AB-', '2016-02-06', 101212, 1200), 
       (150017, 'Sherlock', '33', 'M', 'B-', '2016-10-15', 101312, 1400), 
       (150018, 'Logan', '31', 'F', 'O+', '2016-01-04', 101312, 1200), 
       (150019, 'Peter', '24', 'F', 'AB+', '2016-09-10', 101312, 1500), 
       (150020, 'Odinson', '29', 'M', 'O-', '2016-12-17', 101212, 1200);
SELECT*
FROM blood_donor;
CREATE TABLE diseasefinder (
  dfind_ID int NOT NULL,
  dfind_name varchar(100) NOT NULL,
  dfind_PhNo bigint DEFAULT NULL,
  PRIMARY KEY (dfind_ID)
);
INSERT INTO diseasefinder 
VALUES (11, 'Indiana', 9693959681), 
       (12, 'Stephen', 9693959682), 
       (13, 'Christine', 9693959683), 
       (14, 'Gwen', 9693959672), 
       (15, 'Viktor', 9693959679), 
       (16, 'Skywalker', 9693959684), 
       (17, 'Julius', 9693959685), 
       (18, 'Kratos', 9693959686), 
       (19, 'Brutus', 9693959687), 
       (20, 'Murdock', 9693959688);
       SELECT*
       FROM diseasefinder ;
CREATE TABLE bloodspecimen (
  specimen_number int NOT NULL,
  b_group varchar(10) NOT NULL,
  status int,
  dfind_ID int NOT NULL,
  M_id int NOT NULL,
  PRIMARY KEY (specimen_number, b_group),
  FOREIGN KEY (M_id) REFERENCES BB_MANAGER  (M_id),
  FOREIGN KEY (dfind_ID) REFERENCES diseasefinder (dfind_ID)
);
INSERT INTO bloodspecimen 
VALUES (1001, 'B+', 1, 11, 101), 
       (1002, 'O+', 1, 12, 102), 
       (1003, 'AB+', 1, 11, 102), 
       (1004, 'O-', 1, 13, 103), 
       (1005, 'A+', 0, 14, 101), 
       (1006, 'A-', 1, 13, 104), 
       (1007, 'AB-', 1, 15, 104), 
       (1008, 'AB-', 0, 11, 105), 
       (1009, 'B+', 1, 13, 105), 
       (1010, 'O+', 0, 12, 105), 
       (1011, 'O+', 1, 13, 103), 
       (1012, 'O-', 1, 14, 102), 
       (1013, 'B-', 1, 14, 102), 
       (1014, 'AB+', 0, 15, 101);
SELECT*
FROM bloodspecimen ;
CREATE TABLE hospital_info_1 (
  hosp_ID int NOT NULL,
  hosp_name varchar(100) NOT NULL,
  City_ID int NOT NULL,
  M_id int NOT NULL,
  PRIMARY KEY (hosp_ID),
 FOREIGN KEY (M_id) REFERENCES BB_MANAGER (M_id),
   FOREIGN KEY (City_ID) REFERENCES city (City_ID)
);
INSERT INTO hospital_info_1 
VALUES (1, 'Springfield', 1100, 101), 
       (2, 'Hampshire', 1200, 103), 
       (3, 'Winterfell', 1300, 103), 
       (4, 'Riverrun', 1400, 104), 
       (5, 'Hogsmeade', 1800, 103), 
       (6, 'Greenoaks', 1300, 106), 
       (7, 'Forestpark', 1300, 102), 
       (8, 'Parkland', 1200, 106), 
       (9, 'Pinecreek', 1500, 109), 
       (10, 'Alphaville', 1700, 105);
       SELECT*
       FROM hospital_info_1 ;
CREATE TABLE hospital_info_2 (
  hosp_ID int NOT NULL,
  hosp_name varchar(100) NOT NULL,
  hosp_needed_Bgrp varchar(10) NOT NULL,
  hosp_needed_qnty int ,
  PRIMARY KEY (hosp_ID, hosp_needed_Bgrp)
);
INSERT INTO hospital_info_2 
VALUES (1, 'Springfield', 'A-', 0), 
       (1, 'Springfield', 'A+', 20), 
       (1, 'Springfield', 'AB-', 10), 
       (1, 'Springfield', 'AB+', 40), 
       (1, 'Springfield', 'B-', 20), 
       (2, 'Hampshire', 'A-', 10), 
       (2, 'Hampshire', 'A+', 40), 
       (2, 'Hampshire', 'AB-', 10), 
       (2, 'Hampshire', 'AB+', 20), 
       (2, 'Hampshire', 'B-', 30), 
       (2, 'Hampshire', 'B+', 0), 
       (3, 'Winterfell', 'A-', 0), 
       (3, 'Winterfell', 'A+', 0), 
       (3, 'Winterfell', 'AB-', 0), 
       (3, 'Winterfell', 'AB+', 0), 
       (3, 'Winterfell', 'B-', 20), 
       (3, 'Winterfell', 'B+', 10), 
       (4, 'Riverrun', 'A-', 40), 
       (4, 'Riverrun', 'A+', 10), 
       (7, 'Forestpark', 'B-', 40), 
       (8, 'Parkland', 'B+', 10), 
       (9, 'Pinecreek', 'AB-', 20);
       SELECT*
       FROM hospital_info_2 ;
CREATE TABLE recipient (
  reci_ID int NOT NULL,
  reci_name varchar(100) NOT NULL,
  reci_age varchar(10) DEFAULT NULL,
  reci_Brgp varchar(100) DEFAULT NULL,
  reci_Bqnty float DEFAULT NULL,
  reco_ID int NOT NULL,
  City_ID int NOT NULL,
M_id int NOT NULL,
  reci_sex varchar(100) DEFAULT NULL,
  reci_reg_date date DEFAULT NULL,
  PRIMARY KEY (reci_ID),
 FOREIGN KEY (M_id) REFERENCES BB_MANAGER (M_id),
 FOREIGN KEY (City_ID) REFERENCES city (City_ID)
);
INSERT INTO recipient 
VALUES (10001, 'Indiana', '25', 'B+', 1.5, 101212, 1100, 101, 'F', '2015-12-17'), 
       (10002, 'Bruce', '60', 'A+', 1, 101312, 1100, 102, 'M', '2015-12-16'), 
       (10003, 'Goku', '35', 'AB+', 0.5, 101312, 1200, 102, 'M', '2015-10-17'), 
       (10004, 'Stephen', '66', 'B+', 1, 101212, 1300, 104, 'M', '2016-11-17'), 
       (10005, 'Itachi', '53', 'B-', 1, 101412, 1400, 105, 'M', '2015-04-17'), 
       (10006, 'Erwin', '45', 'O+', 1.5, 101512, 1500, 105, 'M', '2015-12-17'), 
       (10007, 'Natasha', '22', 'AB-', 1, 101212, 1500, 101, 'M', '2015-05-17'), 
       (10008, 'Julius', '25', 'B+', 2, 101412, 1300, 103, 'F', '2015-12-14'), 
       (10009, 'Hemsworth', '30', 'A+', 1.5, 101312, 1100, 104, 'M', '2015-02-16'), 
       (10010, 'Langford', '25', 'AB+', 3.5, 101212, 1200, 107, 'F', '2016-10-17');
SELECT*
FROM recipient;
