# BloodBankManagement: Database Schema and Data Initialization
## Overview

This script creates and populates tables for a comprehensive Blood Bank Management System. It includes tables for managing blood bank managers, recording staff, cities, blood donors, disease finders, blood specimens, hospitals, and recipients. Each table is created with relevant fields and constraints, followed by inserting sample data.

## ER Diagram

Below is the Entity-Relationship (ER) diagram for BloodBankManagement:

![ER Diagram](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/2bebbd05-5cc7-499f-9aa2-82df5c7f7f89)

## Schema Diagram

Below is the relational schema diagram for BloodBankManagement:

![Schema Diagram 1](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/bd4fc4e9-5e75-4129-884f-debe7c3667ce)

Relational schema after normalization:

![Schema Diagram 2](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/63b9b091-97c2-4861-a674-a69d5c251bb3)

## Tables and Structure

### 1. BB_MANAGER

Stores information about blood bank managers.

- **Columns:**
  - `M_id`: Integer, Primary Key
  - `mName`: Varchar(100), Not Null
  - `m_phNo`: Bigint

 ![BB_MANAGER](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/567b1e86-ae9d-41d8-a1b0-5fb2d009cfb2) 

### 2. recording_staff

Stores information about recording staff.

- **Columns:**
- reco_ID: Integer, Primary Key
- reco_Name: Varchar(100), Not Null
- reco_phNo: Bigint, Default Null

![recording_staff](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/de23ef77-506d-44f0-8e6a-07431632d557)

### 3. city

Stores information about cities.

- **Columns:**
- City_ID: Integer, Primary Key
- City_ID: Integer, Primary Key

![city](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/0925aab5-cdea-4026-abf0-61562d7ac33d)

### 4.blood_donor

Stores information about blood donors.

- **Columns:**
- bd_ID: Integer, Primary Key
- bd_name: Varchar(100), Not Null
- bd_age: Varchar(100)
- bd_sex: Varchar(100)
- bd_Bgroup: Varchar(10)
- bd_reg_date: Date
- reco_ID: Integer, Foreign Key
- City_ID: Integer, Foreign Key

![blood_donor](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/be5ca0b0-e70f-4dde-b447-6ba2737124bb)

### 5. diseasefinder

Stores information about disease finders.

- **Columns:**
- dfind_ID: Integer, Primary Key
- dfind_name: Varchar(100), Not Null
- dfind_PhNo: Bigint, Default Null

![diseasefinder](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/ab271a60-caa3-44ba-9376-528ee24e42b1)

### 6. bloodspecimen

Stores information about blood specimens.

- **Columns:**
- specimen_number: Integer, Primary Key
- b_group: Varchar(10), Primary Key
- status: Integer
- dfind_ID: Integer, Foreign Key
- M_id: Integer, Foreign Key

![blood_specimen](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/c091cd9d-b3d2-471f-9794-01e0fbfb551a)

### 7. hospital_info_1

Stores information about hospitals.

- **Columns:**
- hosp_ID: Integer, Primary Key
- hosp_name: Varchar(100), Not Null
- City_ID: Integer, Foreign Key
- M_id: Integer, Foreign Key

![hospital_info_1](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/2ca93558-67f1-4d5b-ab13-bb4b7bd553fc)

### 8. hospital_info_2

Stores information about hospital blood needs.
- **Columns:**
- hosp_ID: Integer, Primary Key
- hosp_name: Varchar(100), Not Null
- hosp_needed_Bgrp: Varchar(10), Primary Key
- hosp_needed_qnty: Integer

![hospital_info_2](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/11a9dc8d-e92f-43f2-a996-f57b6b19f069)

### 9. recipient

Stores information about blood recipients.

- **Columns:**
- reci_ID: Integer, Primary Key
- reci_name: Varchar(100), Not Null
- reci_age: Varchar(10)
- reci_Brgp: Varchar(100)
- reci_Bqnty: Float
- reco_ID: Integer, Foreign Key
- City_ID: Integer, Foreign Key
- M_id: Integer, Foreign Key
- reci_sex: Varchar(100)
- reci_reg_date: Date

![recipient](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/70c129c7-5de2-453a-9631-7951fb7ff9ad)

## Sample Data
The script includes sample data for each table to demonstrate the relationships and provide a working example of the schema.

## Usage

1.Create a Database:
Before running the script, create a new database in your SQL database management system i.e MySql Workspace.

2.Select the Database:
Use the newly created database.

3.Run the Script:
Execute (Copy and Paste) the provided SQL script to create the tables and insert the sample data.

## Contributors

- Nabiha Tahsin (222-115-236)
- Juairia Chowdhury (222-115-233)
