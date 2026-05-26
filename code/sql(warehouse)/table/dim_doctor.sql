CREATE TABLE [dbo].[dim_doctor] (

	[doctor_id] int NULL, 
	[doctor_name] varchar(255) NULL, 
	[department_id] int NULL, 
	[hospital_id] int NULL, 
	[gender] varchar(20) NULL, 
	[experience_years] int NULL, 
	[consultation_fee] float NULL, 
	[shift_type] varchar(100) NULL, 
	[employment_type] varchar(100) NULL
);