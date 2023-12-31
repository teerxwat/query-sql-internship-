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
           ,[CusID_Purchase])

SELECT  
	  vc.[CusType]
	  ,vc.ID
      ,vc.[Prefix]
      ,vc.[Name]+' '+vc.[Surname] as VCname
	  ,vc.[Address]+' ม. '+cast(vc.[Add_Moo] as varchar(50))+' '+cast(vc.[Add_HomeName]as varchar(50)) as VCadd
      ,vc.[District]
      ,vc.[Amphur]
      ,vc.[Add_Postel]
      ,vc.[Province]
       ,vc.[Tel_Mobile1]
       ,vp.OutCar_Date
       ,vc.ID
	        
  FROM [AS400Retrival].[dbo].[MIRAICustomer] mc
  full outer join AS400Retrival.dbo.View_Customer vc
  on vc.ID=mc.CusID_Purchase 
  inner join AS400Retrival.dbo.View_Purchase vp
  on vp.CusID=vc.ID

  where CusID_Purchase is null and vc.ID is not null 


GO


