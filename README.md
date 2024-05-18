# BloodBankManagement: Database Schema and Data Initialization
## Overview

This script creates and populates tables for BloodConnect, a comprehensive Blood Bank Management System. It includes tables for managing blood bank managers, recording staff, cities, blood donors, disease finders, blood specimens, hospitals, and recipients. Each table is created with relevant fields and constraints, followed by inserting sample data.

## ER Diagram

Below is the Entity-Relationship (ER) diagram for BloodBankManagement:

![ER Diagram](https://github.com/nabihatahsin13/Bloodbankmanagement/assets/151044928/ad03ac11-122f-4357-9109-00773c6ea86c)

## Schema Diagram

Below is the schema diagram for BloodBankManagement:


## Tables and Structure

### 1. BB_MANAGER

Stores information about blood bank managers.

- **Columns:**
  - `M_id`: Integer, Primary Key
  - `mName`: Varchar(100), Not Null
  - `m_phNo`: Bigint

### 2. recording_staff

Stores information about recording staff.

- **Columns:**
- reco_ID: Integer, Primary Key
- reco_Name: Varchar(100), Not Null
- reco_phNo: Bigint, Default Null

### 3. city

Stores information about cities.

- **Columns:**
- City_ID: Integer, Primary Key
- City_ID: Integer, Primary Key

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

### 5. diseasefinder

Stores information about disease finders.

- **Columns:**
- dfind_ID: Integer, Primary Key
- dfind_name: Varchar(100), Not Null
- dfind_PhNo: Bigint, Default Null

### 6. bloodspecimen

Stores information about blood specimens.

- **Columns:**
- specimen_number: Integer, Primary Key
- b_group: Varchar(10), Primary Key
- status: Integer
- dfind_ID: Integer, Foreign Key
- M_id: Integer, Foreign Key

### 7. hospital_info_1

Stores information about hospitals.

- **Columns:**
- hosp_ID: Integer, Primary Key
- hosp_name: Varchar(100), Not Null
- City_ID: Integer, Foreign Key
- M_id: Integer, Foreign Key

### 8. hospital_info_2

Stores information about hospital blood needs.
- **Columns:**
- hosp_ID: Integer, Primary Key
- hosp_name: Varchar(100), Not Null
- hosp_needed_Bgrp: Varchar(10), Primary Key
- hosp_needed_qnty: Integer

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
- Mamnun Mumin Eram (222-115-254)
