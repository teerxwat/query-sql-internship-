INSERT INTO [AS400Retrival].[dbo].[CustomerService]
           ([ServiceCode]
           ,[ServiceName]
           ,[ClassGroup]
           ,[CustomerType]
           ,[CustomerCode]
           ,[CustomerPrefix]
           ,[CustomerName]
           ,[Address]
           ,[SubDistrict]
           ,[District]
           ,[Province]
           ,[Zipcode]
           ,[CustomerTel]
           ,[DriverName]
           ,[DriverTel]
           ,status )
select * 
	from (SELECT top 1 [ServiceCode]
			,[ServiceName]
			,[ClassGroup]
			,[CustomerType]
			,[CustomerCode]
			,[CustomerPrefix]
		    ,[CustomerName]
		    ,[Address]
		    ,[SubDistrict]
		    ,[District]
		    ,[Province]
		    ,[Zipcode]
		    ,[CustomerTel]
		    ,[DriverName]
		    ,[DriverTel]
		    ,ROW_NUMBER() over(partition by CustomerCode order by CustomerCode desc) as a
	 FROM [AS400Retrival].[dbo].[MIRAIHeader]) t
	 where a=1
GO


