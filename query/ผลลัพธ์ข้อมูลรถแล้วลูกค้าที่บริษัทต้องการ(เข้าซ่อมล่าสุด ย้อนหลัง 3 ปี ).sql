/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [CustomerCar_ID]
      ,cc.[Customer_ID]
      ,cc.[Car_ID]
      --//////////////////////////////////////
      ,mc.[EngineCode]
      ,mc.[ChassisCode]
      ,mc.[JobDate]
      ,mc.[LicencePlate]
      ,mc.[StatusCheck]
      --//////////////////////////////////////
      ,mcus.CustomerCode
      ,mcus.CustomerName 
      ,[Address]
      ,[SubDistrict]
      ,[District]
      ,[Province]
      ,[ZipCode]
      ,mcus.CustomerTel
  FROM [AS400Retrival].[dbo].[CustomerCar] cc
  left join AS400Retrival.dbo.MIRAICar mc
  on mc.Car_ID=cc.Car_ID
  
  left join AS400Retrival.dbo.MIRAICustomer mcus
  on mcus.CustomerID=cc.Customer_ID or mcus.CusID_Purchase=cc.Customer_ID
  --where CustomerCode is null
  order by JobDate