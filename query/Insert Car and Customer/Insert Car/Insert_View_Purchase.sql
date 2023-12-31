INSERT INTO [AS400Retrival].[dbo].[MIRAICar]
           ([EngineCode]
           ,[ChassisCode]
           ,[Brand]
           ,[ClassCode]
           ,[Mile]
           ,[SumMile]
           ,[JobDate]
           ,[LicencePlate]
           ,[VehicleCode]
           ,[StatusCheck]
           ,[DPGrade]
           ,insurance
           ,FinanceName
           ,companybranchname)
	SELECT 
			  vp.MCNumber
			  ,Right(TruckNumber,8) as Chassis
			  ,case when TruckNumber like 'MP%' then 'อีซูซุ'
				  when TruckNumber = '' then 'อื่นๆ'
				  else 'OTHER' End as BrandVP
			  ,vp.MSaleCode
			  ,'0' as Mille
			  ,'0' as SumMille
			  ,vp.OutCar_Date
			  ,vp.CarPlate
			  ,vp.TruckNumber
			  ,case when StatusCheck like 'NULL%' then '3'
				  else '3' End as StatusCheckVP
			  ,'NULL' as Grade
			  ,vp.insurance as insuranceVP
			  ,vp.FinanceName as FinanceNameVP
			  ,vp.companybranchname as company
		  FROM [AS400Retrival].[dbo].[MIRAICar] mcar
		  
		  full outer join AS400Retrival.dbo.View_Purchase vp 
		  on vp.MCNumber = mcar.EngineCode
		  
		  where  EngineCode is null and MCNumber is not null
GO