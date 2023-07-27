INSERT INTO [AS400Retrival].[dbo].[MIRAICustomer]
           ([CustomerType]
           ,[CustomerCode]
           ,[CustomerPrefix]
           ,[CustomerName]
           ,[CustomerTel]
           ,[JobDate])
SELECT 'ลูกค้าบุคคล' as CustomerType
	,CustomerCode
	,'คุณ' as CustomerPrefix
      ,[CustomerName]
      ,Tel1
      ,SaveDate
  FROM [AS400Retrival].[dbo].[DECODER_Truck]
GO


