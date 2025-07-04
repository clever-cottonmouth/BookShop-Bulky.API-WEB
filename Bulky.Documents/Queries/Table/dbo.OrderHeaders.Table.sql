USE [EBookShop]
GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 22-04-2025 11:29:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippingDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[TrackingNumber] [nvarchar](max) NULL,
	[Carrier] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentDueDate] [date] NOT NULL,
	[SessionId] [nvarchar](max) NULL,
	[PaymentIntentId] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (1, N'865d9166-bfa2-4e3c-a219-d45508391eaf', CAST(N'2025-04-22T11:24:04.9743397' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 30, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01' AS Date), N'cs_test_a17qSAeLQhKD4noWyZwPf6hgkpZ7H1RA3tdqGK6Wf4f3k6ZixuPnQfJPVK', NULL, N'+1 (883) 536-1386', N'Adipisci qui ad ipsu', N'Et et mollit quis de', N'Temporibus dolore la', N'Sit sed aut ipsam c', N'Admin')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderHeaders_ApplicationUserId]    Script Date: 22-04-2025 11:29:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderHeaders_ApplicationUserId] ON [dbo].[OrderHeaders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
