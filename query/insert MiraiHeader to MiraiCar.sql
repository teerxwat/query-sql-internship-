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
           ,[StatusCheck])
     select *
from (/****** Script for SelectTopNRows command from SSMS  ******/
SELECT	[EngineCode]
      ,[ChassisCode]
      ,[Brand]
      ,[ClassCode]
      ,[Mile]
      ,[SumMile]
      ,[JobDate]
      ,[LicencePlate]
      ,[VehicleCode]
      ,ROW_NUMBER() over(partition by EngineCode order by EngineCode desc ) as a
  FROM [AS400Retrival].[dbo].[MIRAIHeader]) t1
  where a=1
GO


