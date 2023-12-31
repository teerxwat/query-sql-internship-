/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [CusCarServiceID]
      ,cts.[CustomerServiceID]
      ,cac.CustomerServiceID
      ,cs.[CarServiceID]
      ,cac.CusCarServiceID
		,cts.[CustomerServiceID]
		,cts.[ServiceCode]
		,cts.[ServiceName]
		,cts.[ClassGroup]
		,cts.[CustomerType]
		,cts.[CustomerCode]
		,cts.[CustomerPrefix]
		,cts.[CustomerName]
		,cts.[Address]
		,cts.[SubDistrict]
		,cts.[District]
		,cts.[Province]
		,cts.[Zipcode]
		,cts.[CustomerTel]
		,cts.[DriverName]
		,cts.[DriverTel]
		,cts.[CarServiceID]
		,cac.[DeliveryTime]
		
		,cs.[CarServiceID]
		,cs.[LicencePlate]
		,cs.[VehicleCode]
		,cs.[EngineCode]
		,cs.[ChassisCode]
		,cs.[ClassCode]
		,cs.[SaCode]
		,cs.[SaName]
		,cs.[Mile]
		,cs.[SumMile]
		,cs.[DeliveryTime]
		,cs.[CustomerServiceID]
		
		
      ,[Status1]
      ,[Status2]
      ,[Status3]
  FROM [AS400Retrival].[dbo].[CarAndCustomerService] cac
  inner join AS400Retrival.dbo.CustomerService cts
  on cts.CustomerServiceID=cac.CustomerServiceID
  
  inner join AS400Retrival.dbo.CarService cs
  on cs.CarServiceID=cac.CusCarServiceID