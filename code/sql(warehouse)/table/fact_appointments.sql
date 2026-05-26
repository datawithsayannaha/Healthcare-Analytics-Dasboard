CREATE TABLE [dbo].[fact_appointments] (

	[appointment_id] int NULL, 
	[patient_id] int NULL, 
	[doctor_id] int NULL, 
	[hospital_id] int NULL, 
	[scheduled_date] date NULL, 
	[appointment_date] date NULL, 
	[appointment_hour] int NULL, 
	[appointment_type] varchar(100) NULL, 
	[status] varchar(100) NULL, 
	[waiting_time_minutes] int NULL, 
	[consultation_duration_minutes] int NULL, 
	[sms_reminder_sent] varchar(10) NULL, 
	[date_diff] int NULL, 
	[no_show_flag] int NULL, 
	[cancelled_flag] int NULL
);