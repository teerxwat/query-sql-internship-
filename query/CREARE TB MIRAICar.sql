USE [AS400Retrival]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MIRAICar](
[Car_ID] [int] IDENTITY(1,1) NOT NULL,
[EngineCode] [varchar](50) NULL,
[ChassisCode] [varchar](50) NULL,
[Brand] [varchar](50) NULL,
[ClassCode] [varchar](50) NULL,
[Mile] [float] NULL,
[SumMile] [float] NULL,
[JobDate] [datetime] NULL,
[LicencePlate] [varchar](50) NULL,
[VehicleCode] [varchar](50) NULL,
[StatusCheck] [tinyint] NULL,
[DPGrade] [varchar](10) NULL,
[insurance] [nvarchar](50) NULL,
[FinanceName] [varchar](50) NULL,
[companybranchname] [varchar](50) NULL,
CONSTRAINT [PK_MIRAICar_Test] PRIMARY KEY CLUSTERED
(
[Car_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO