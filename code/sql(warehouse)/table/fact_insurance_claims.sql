CREATE TABLE [dbo].[fact_insurance_claims] (

	[claim_id] int NULL, 
	[bill_id] int NULL, 
	[patient_id] int NULL, 
	[insurance_provider] varchar(255) NULL, 
	[policy_type] varchar(100) NULL, 
	[claim_amount] float NULL, 
	[approved_amount] float NULL, 
	[claim_status] varchar(100) NULL, 
	[claim_date] date NULL, 
	[settlement_days] int NULL, 
	[approval_rate] float NULL, 
	[claim_delay_bucket] varchar(100) NULL
);