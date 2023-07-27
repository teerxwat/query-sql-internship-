INSERT INTO [AS400Retrival].[dbo].[CarService]
           ([LicencePlate]
           ,[VehicleCode]
           ,[EngineCode]
           ,[ChassisCode]
           ,[ClassCode]
           ,[SaCode]
           ,[SaName]
           ,[Mile]
           ,[SumMile]
           ,[DeliveryTime]
           ,[CustomerServiceID]
           ,[status])
select * 
from(SELECT [LicencePlate]
      ,[VehicleCode]
      ,[EngineCode]
      ,[ChassisCode]
      ,[ClassCode]
      ,[SaCode]
      ,[SaName]
      ,[Mile]
      ,[SumMile]
      ,[DeliveryTime]
      ,CustomerServiceID
      ,ROW_NUMBER() over(PARTITION by mh.EngineCode order by mh.DeliveryTime) as a
  FROM [AS400Retrival].[dbo].[MIRAIHeader] mh 
  inner join AS400Retrival.dbo.CustomerService cs
  on cs.CustomerCode=mh.CustomerCode)t
  where a=1
GO


