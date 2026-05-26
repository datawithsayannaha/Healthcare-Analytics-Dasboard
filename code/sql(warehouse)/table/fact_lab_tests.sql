CREATE TABLE [dbo].[fact_lab_tests] (

	[lab_test_id] int NULL, 
	[appointment_id] int NULL, 
	[patient_id] int NULL, 
	[doctor_id] int NULL, 
	[test_name] varchar(255) NULL, 
	[test_date] date NULL, 
	[test_result] varchar(100) NULL, 
	[test_cost] float NULL, 
	[report_delivery_days] int NULL, 
	[critical_flag] int NULL
);