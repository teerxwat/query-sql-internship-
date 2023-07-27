INSERT INTO [AS400Retrival].[dbo].[MIRAICustomer]
           ([CustomerType]
           ,[CustomerCode]
           ,[CustomerPrefix]
           ,[CustomerName]
           ,[Address]
           ,[SubDistrict]
           ,[District]
           ,[ZipCode]
           ,[Province]
           ,[CustomerTel]
           ,[JobDate]
           ,[test2])
     select * 
from(/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [CustomerType]
      ,[CustomerCode]
      ,[CustomerPrefix]
      ,[CustomerName]
      ,[Address]
      ,[SubDistrict]
      ,[District]
      ,[ZipCode]
      ,[Province]
      ,[CustomerTel]
      ,[JobDate]
      --,[test2]
      --,[CusID_Purchase]
      ,ROW_NUMBER() over(partition by CustomerCode order by CustomerCode desc) as a
  FROM [AS400Retrival].[dbo].[MIRAIHeader]) t1
  where a=1
  
GO


