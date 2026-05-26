CREATE TABLE [dbo].[fact_patient_feedback] (

	[feedback_id] int NULL, 
	[appointment_id] int NULL, 
	[patient_id] int NULL, 
	[hospital_id] int NULL, 
	[rating] int NULL, 
	[feedback_comment] varchar(1000) NULL, 
	[feedback_date] date NULL, 
	[satisfaction_group] varchar(100) NULL
);