USE [shoe_stores]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 3/10/2016 2:58:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[brands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[brands_stores]    Script Date: 3/10/2016 2:58:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands_stores](
	[iD] [int] IDENTITY(1,1) NOT NULL,
	[brand_id] [int] NULL,
	[store_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stores]    Script Date: 3/10/2016 2:58:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[brands_stores] ON 

INSERT [dbo].[brands_stores] ([iD], [brand_id], [store_id]) VALUES (3, 3, 2)
INSERT [dbo].[brands_stores] ([iD], [brand_id], [store_id]) VALUES (4, 3, 2)
SET IDENTITY_INSERT [dbo].[brands_stores] OFF
