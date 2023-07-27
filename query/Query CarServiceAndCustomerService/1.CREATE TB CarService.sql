USE [AS400Retrival]
GO

/****** Object:  Table [dbo].[CarService]    Script Date: 02/26/2020 08:58:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CarService](
	[CarServiceID] [int] IDENTITY(1,1) NOT NULL,
	[LicencePlate] [varchar](20) NULL,
	[VehicleCode] [varchar](50) NULL,
	[EngineCode] [varchar](30) NULL,
	[ChassisCode] [varchar](30) NULL,
	[ClassCode] [varchar](50) NULL,
	[SaCode] [int] NULL,
	[SaName] [varchar](100) NULL,
	[Mile] [int] NULL,
	[SumMile] [int] NULL,
	[DeliveryTime] [datetime] NULL,
	[CustomerServiceID] [int] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_CarService2] PRIMARY KEY CLUSTERED 
(
	[CarServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


