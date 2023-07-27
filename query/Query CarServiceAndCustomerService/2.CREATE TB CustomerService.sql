USE [AS400Retrival]
GO

/****** Object:  Table [dbo].[CustomerService]    Script Date: 02/26/2020 08:58:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CustomerService](
	[CustomerServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceCode] [int] NULL,
	[ServiceName] [varchar](250) NULL,
	[ClassGroup] [varchar](50) NULL,
	[CustomerType] [varchar](50) NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustomerPrefix] [varchar](50) NULL,
	[CustomerName] [varchar](150) NULL,
	[Address] [varchar](100) NULL,
	[SubDistrict] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Province] [varchar](50) NULL,
	[Zipcode] [varchar](50) NULL,
	[CustomerTel] [varchar](50) NULL,
	[DriverName] [varchar](150) NULL,
	[DriverTel] [varchar](50) NULL,
	[status] [tinyint] NULL,
	[CarServiceID] [int] NULL,
 CONSTRAINT [PK_CustomerService1] PRIMARY KEY CLUSTERED 
(
	[CustomerServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


