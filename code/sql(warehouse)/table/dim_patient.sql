CREATE TABLE [dbo].[dim_patient] (

	[patient_id] int NULL, 
	[patient_name] varchar(255) NULL, 
	[gender] varchar(20) NULL, 
	[date_of_birth] date NULL, 
	[city] varchar(100) NULL, 
	[state] varchar(100) NULL, 
	[blood_group] varchar(20) NULL, 
	[registration_date] date NULL, 
	[phone_number] bigint NULL, 
	[email] varchar(255) NULL, 
	[age] int NULL, 
	[age_group] varchar(100) NULL
);