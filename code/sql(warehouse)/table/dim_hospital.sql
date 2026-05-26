CREATE TABLE [dbo].[dim_hospital] (

	[hospital_id] int NULL, 
	[hospital_name] varchar(255) NULL, 
	[city] varchar(100) NULL, 
	[state] varchar(100) NULL, 
	[hospital_type] varchar(100) NULL, 
	[bed_capacity] int NULL, 
	[icu_beds] int NULL, 
	[emergency_available] varchar(10) NULL
);