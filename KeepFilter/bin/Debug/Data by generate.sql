USE [master]
GO
/****** Object:  Database [KeepFilter]    Script Date: 4/19/2025 1:39:12 PM ******/
CREATE DATABASE [KeepFilter]
GO
USE [KeepFilter]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/19/2025 1:39:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Category] [nvarchar](100) NOT NULL,
	[Price] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (1, N'Laptop HP Pavillon', N'Laptop HP', CAST(14000000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (2, N'Máy tính khoa học flexio fx799VN', N'Máy tính', CAST(14000000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (3, N'Máy tính văn phòng CAL-04S', N'Máy tính khoa học', CAST(14000000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (4, N'Máy tính văn phòng CAL-07S', N'Máy tính khoa học', CAST(14000000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (5, N'Laptop HP Pavillon X360', N'Laptop HP', CAST(14000000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([Id], [Name], [Category], [Price]) VALUES (6, N'OPPO N3 Flip', N'Điện thoại', CAST(14000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [KeepFilter] SET  READ_WRITE 
GO
