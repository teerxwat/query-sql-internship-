--select * 
--from(SELECT mc.[Car_ID]
--		  ,mc.[EngineCode]
--		  ,mc.[ChassisCode]
--		  ,mc.[JobDate]
--		  ,mc.[StatusCheck]
--		  ,DT.CustomerCode as TruckCode
--		  ,mh.CustomerCode as HeaderCode
--		  ,ct.CusID_Purchase as ViewCode
--		  ,vc.ID
--		  ,ct.CustomerCode as MiraiCustomerCode
--		  ,ct.CustomerID
--		  ,vp.CusID
--		  ,ROW_NUMBER() over(PARTITION by mc.Car_ID order by ct.CustomerID desc) sc
--		  ,cc.CustomerCar_ID as C
--	  FROM [AS400Retrival].[dbo].[MIRAICar] mc
	  
--	  left join AS400Retrival.dbo.DECODER_Truck DT
--		on DT.MCCode=mc.EngineCode and dt.Chess=mc.ChassisCode
	  
--	  left join AS400Retrival.dbo.MIRAIHeader mh
--		on mh.EngineCode=mc.EngineCode and mh.ChassisCode=mc.ChassisCode
	   
--	  left join AS400Retrival.dbo.View_Purchase vp
--		 on vp.MCNumber=mc.EngineCode
	  
--	  left join AS400Retrival.dbo.View_Customer vc
--		on vc.ID=vp.CusID
	  
--	  left join AS400Retrival.dbo.MIRAICustomer ct
--		on ct.CustomerCode=DT.CustomerCode or ct.CustomerCode=mh.CustomerCode or ct.CustomerCode=cast (vc.ID as varchar(255)) 
	  
--	  left join AS400Retrival.dbo.CustomerCar cc
--		on cc.Car_ID=mc.Car_ID
	  
--	  where mc.JobDate >'2017-01-01' 
--	  )t
--  where sc=1 and c is null and CustomerID is not null
  
  
  
  
--  ///////////////////////////////////////Insert///////////////////////////////////////////
INSERT INTO [AS400Retrival].[dbo].[CustomerCar]
           ([Customer_ID]
           ,[Car_ID]
           ,[StatusCheck]
           ,IsOwner)
select * 
	from(SELECT   ct.CustomerID
					,mc.[Car_ID]
					,cc.CustomerCar_ID as C
					,ROW_NUMBER() over(PARTITION by mc.Car_ID order by ct.CustomerID desc) sc
			FROM [AS400Retrival].[dbo].[MIRAICar] mc
					  
				left join AS400Retrival.dbo.DECODER_Truck DT
					on DT.MCCode=mc.EngineCode and dt.Chess=mc.ChassisCode
					  
				left join AS400Retrival.dbo.MIRAIHeader mh
					on mh.EngineCode=mc.EngineCode and mh.ChassisCode=mc.ChassisCode
					   
				left join AS400Retrival.dbo.View_Purchase vp
					 on vp.MCNumber=mc.EngineCode
					  
				left join AS400Retrival.dbo.View_Customer vc
					on vc.ID=vp.CusID
					  
				left join AS400Retrival.dbo.MIRAICustomer ct
					on ct.CustomerCode=DT.CustomerCode or ct.CustomerCode=mh.CustomerCode or ct.CustomerCode=cast (vc.ID as varchar(255)) 
					  
				left join AS400Retrival.dbo.CustomerCar cc
					on cc.Car_ID=mc.Car_ID
					  
					where mc.JobDate >'2017-01-01' 
					)t
		where sc=1 and c is null and CustomerID is not null
GO