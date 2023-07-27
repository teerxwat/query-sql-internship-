USE [AS400Retrival]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MIRAICustomer](
[CustomerID] [int] IDENTITY(1,1) NOT NULL,
[CustomerType] [varchar](100) NULL,
[CustomerCode] [varchar](50) NULL,
[CustomerPrefix] [varchar](50) NULL,
[CustomerName] [varchar](500) NULL,
[Address] [varchar](500) NULL,
[SubDistrict] [varchar](100) NULL,
[District] [varchar](100) NULL,
[ZipCode] [varchar](50) NULL,
[Province] [varchar](100) NULL,
[CustomerTel] [varchar](50) NULL,
[JobDate] [datetime] NULL,
[test2] [tinyint] NULL,
[CusID_Purchase] [int] NULL,
CONSTRAINT [PK_MIRAICustomer] PRIMARY KEY CLUSTERED
(
[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[MIRAICustomer1] ADD CONSTRAINT [DF_MIRAICustomer1_CusID_Purchase] DEFAULT ((0))
FOR [CusID_Purchase]
GO