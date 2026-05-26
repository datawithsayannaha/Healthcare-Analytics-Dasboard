CREATE TABLE [dbo].[fact_billing] (

	[bill_id] int NULL, 
	[appointment_id] int NULL, 
	[patient_id] int NULL, 
	[hospital_id] int NULL, 
	[billing_date] date NULL, 
	[consultation_fee] float NULL, 
	[medicine_cost] float NULL, 
	[lab_test_cost] float NULL, 
	[room_charge] float NULL, 
	[payment_method] varchar(100) NULL, 
	[payment_status] varchar(100) NULL, 
	[total_amount] float NULL
);