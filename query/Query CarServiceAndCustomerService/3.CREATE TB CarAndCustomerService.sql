USE [AS400Retrival]
GO

/****** Object:  Table [dbo].[CarAndCustomerService]    Script Date: 02/26/2020 08:33:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CarAndCustomerService](
	[CusCarServiceID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerServiceID] [int] NULL,
	[CarServiceID] [int] NULL,
	[DeliveryTime] [datetime] NULL,
	[Status1] [int] NULL,
	[Status2] [int] NULL,
	[Status3] [int] NULL,
 CONSTRAINT [PK_CarAndCustomerService1] PRIMARY KEY CLUSTERED 
(
	[CusCarServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


