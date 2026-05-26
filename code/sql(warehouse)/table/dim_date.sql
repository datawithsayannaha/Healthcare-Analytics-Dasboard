CREATE TABLE [dbo].[dim_date] (

	[Date] date NULL, 
	[Year] int NULL, 
	[Month] int NULL, 
	[Month_Name] varchar(20) NULL, 
	[Month_Year] varchar(20) NULL, 
	[Year_Month_Sort] int NULL, 
	[Quarter] int NULL, 
	[Week_Day] int NULL
);