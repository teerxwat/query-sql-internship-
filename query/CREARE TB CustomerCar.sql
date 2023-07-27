USE [AS400Retrival]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCar](
[CustomerCar_ID] [int] IDENTITY(1,1) NOT NULL,
[Customer_ID] [int] NULL,
[Car_ID] [int] NULL,
[StatusCheck] [tinyint] NULL,
[IsOwner] [tinyint] NULL,
CONSTRAINT [PK_CustomerCar_1] PRIMARY KEY CLUSTERED
(
[CustomerCar_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerCar] ADD CONSTRAINT [DF_CustomerCar_IsOwner] DEFAULT ((0)) FOR [IsOwner]
GO