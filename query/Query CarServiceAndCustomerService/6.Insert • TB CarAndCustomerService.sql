INSERT INTO [AS400Retrival].[dbo].[CarAndCustomerService]
           ([CustomerServiceID]
           ,[CarServiceID]
           ,[DeliveryTime]
           ,Status1
           ,Status2
           ,Status3)
select *
from(select CusSer.CustomerServiceID as CustomerService_ID
			,CarSer.CarServiceID as CarService_ID
			,MiraiH.DeliveryTime
			,ROW_NUMBER() over(partition by MiraiH.EngineCode,MiraiH.CustomerCode order by MiraiH.DeliveryTime desc) as EnAndCus
			,ROW_NUMBER() over(partition by MiraiH.EngineCode order by MiraiH.DeliveryTime desc) as Engine
			,ROW_NUMBER() over(partition by MiraiH.CustomerCode order by MiraiH.DeliveryTime desc) as Cus
				 --,MiraiH.LicencePlate		 
				 --,MiraiH.EngineCode as MiraiEngineCode
				 --,MiraiH.ChassisCode
				 --,MiraiH.CustomerCode as MiraiCustomerCode
				 --,MiraiH.CustomerName
	FROM [AS400Retrival].[dbo].[MIRAIHeader] MiraiH
			
	inner join AS400Retrival.dbo.CustomerService CusSer
	on CusSer.CustomerCode=MiraiH.CustomerCode
	
	inner join AS400Retrival.dbo.CarService CarSer
	on CarSer.EngineCode = MiraiH.EngineCode
	)t1
	where EnAndCus=1 and (Engine = 1 or Cus=1)
GO


