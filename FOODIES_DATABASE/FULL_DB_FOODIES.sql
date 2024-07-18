USE [master]
GO
/****** Object:  Database [FOODIES]    Script Date: 7/14/2024 1:52:24 PM ******/
CREATE DATABASE [FOODIES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FOODIES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FOODIES.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FOODIES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FOODIES_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FOODIES] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FOODIES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FOODIES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FOODIES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FOODIES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FOODIES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FOODIES] SET ARITHABORT OFF 
GO
ALTER DATABASE [FOODIES] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FOODIES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FOODIES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FOODIES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FOODIES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FOODIES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FOODIES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FOODIES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FOODIES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FOODIES] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FOODIES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FOODIES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FOODIES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FOODIES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FOODIES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FOODIES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FOODIES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FOODIES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FOODIES] SET  MULTI_USER 
GO
ALTER DATABASE [FOODIES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FOODIES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FOODIES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FOODIES] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FOODIES] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FOODIES] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FOODIES] SET QUERY_STORE = ON
GO
ALTER DATABASE [FOODIES] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FOODIES]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](32) NULL,
	[avatar_img] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_line]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_line](
	[id] [int] NOT NULL,
	[product_item_id] [int] NULL,
	[order_id] [int] NULL,
	[qty] [int] NULL,
	[price] [decimal](16, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_status]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[name] [nvarchar](255) NULL,
	[description] [text] NULL,
	[product_image] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[id] [int] NOT NULL,
	[category_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_item]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[qty_in_stock] [int] NULL,
	[product_image] [nvarchar](255) NULL,
	[price] [decimal](16, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_order]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_order](
	[id] [int] NOT NULL,
	[user_id] [int] NULL,
	[order_date] [date] NULL,
	[shipping_address] [int] NULL,
	[order_total] [decimal](16, 2) NULL,
	[order_status_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopping_cart]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopping_cart](
	[id] [int] NOT NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopping_cart_item]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopping_cart_item](
	[id] [int] NOT NULL,
	[cart_id] [int] NULL,
	[product_item_id] [int] NULL,
	[qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_review]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[ordered_product_id] [int] NOT NULL,
	[comment] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_site]    Script Date: 7/14/2024 1:52:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_site](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[gender] [nvarchar](6) NOT NULL,
	[image] [text] NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](11) NOT NULL,
	[password] [nvarchar](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [name], [username], [password], [avatar_img]) VALUES (1, N'hieu', N'nch', N'905ad72a4d7e2d581adf8ced8e6cebe7', N'conghieu.jpg')
INSERT [dbo].[admin] ([id], [name], [username], [password], [avatar_img]) VALUES (2, N'thanh', N'mpt', N'6491f04915dff0da1374d9cfcdeef676', N'phucthanh.jpg')
INSERT [dbo].[admin] ([id], [name], [username], [password], [avatar_img]) VALUES (3, N'bao', N'tgb', N'1257d73d661885281103bf8dc84de3b2', N'giabao.jpg')
INSERT [dbo].[admin] ([id], [name], [username], [password], [avatar_img]) VALUES (4, N'chinh', N'bcc', N'2692306c452a3247dbc4b7b99bc44470', N'congchinh.jpg')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (1, 1, 1, 16, CAST(3.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (2, 4, 1, 17, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (3, 5, 1, 1, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (4, 2, 1, 4, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (5, 6, 1, 18, CAST(15.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (6, 8, 2, 6, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (7, 10, 2, 4, CAST(14.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (8, 15, 2, 3, CAST(1.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (9, 8, 2, 8, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (10, 5, 2, 2, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (11, 9, 2, 5, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (12, 18, 3, 8, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (13, 20, 3, 2, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (14, 22, 3, 5, CAST(25.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (15, 25, 3, 7, CAST(18.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (16, 27, 3, 8, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (17, 28, 4, 20, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (18, 16, 4, 16, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (19, 19, 4, 4, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (20, 17, 4, 3, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (21, 10, 4, 11, CAST(17.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (22, 5, 5, 46, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (23, 16, 5, 15, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (24, 24, 5, 42, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (25, 19, 6, 35, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (26, 1, 6, 50, CAST(3.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (27, 9, 6, 40, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (28, 23, 7, 2, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (29, 18, 7, 5, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (30, 22, 7, 36, CAST(25.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (31, 10, 8, 49, CAST(14.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (32, 9, 8, 8, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (33, 12, 8, 22, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (34, 1, 9, 25, CAST(3.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (35, 24, 9, 21, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (36, 28, 9, 36, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (37, 20, 10, 30, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (38, 24, 10, 29, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (39, 4, 10, 20, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (40, 23, 11, 36, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (41, 11, 11, 39, CAST(17.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (42, 19, 11, 45, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (43, 16, 12, 29, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (44, 13, 12, 50, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (45, 10, 12, 15, CAST(14.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (46, 20, 13, 23, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (47, 2, 13, 45, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (48, 24, 13, 50, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (49, 1, 14, 43, CAST(3.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (50, 11, 14, 22, CAST(17.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (51, 5, 14, 13, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (52, 5, 15, 3, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (53, 11, 15, 5, CAST(17.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (54, 8, 15, 7, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (55, 9, 16, 9, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (56, 17, 16, 2, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (57, 19, 16, 7, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (58, 12, 17, 9, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (59, 15, 17, 19, CAST(1.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (60, 2, 17, 10, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (61, 5, 18, 8, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (62, 4, 18, 12, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (63, 7, 18, 11, CAST(20.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (64, 8, 19, 8, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (65, 22, 19, 12, CAST(25.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (66, 25, 20, 4, CAST(18.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (67, 14, 20, 7, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (68, 18, 20, 8, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (69, 21, 20, 19, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (70, 12, 21, 21, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (71, 11, 21, 2, CAST(17.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (72, 9, 21, 2, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (73, 7, 22, 3, CAST(20.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (74, 4, 22, 6, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (75, 2, 22, 7, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (76, 4, 23, 8, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (77, 5, 23, 9, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (78, 12, 23, 14, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (79, 9, 24, 12, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (80, 26, 24, 34, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (81, 12, 24, 21, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (82, 3, 25, 16, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (83, 2, 25, 17, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (84, 5, 25, 1, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (85, 8, 25, 4, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (86, 11, 25, 18, CAST(17.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (87, 14, 26, 6, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (88, 10, 26, 4, CAST(14.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (89, 16, 26, 3, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (90, 9, 26, 8, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (91, 17, 30, 2, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (92, 23, 26, 5, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (93, 18, 27, 8, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (94, 21, 27, 2, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (95, 22, 27, 5, CAST(25.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (96, 21, 27, 7, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (97, 24, 27, 8, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (98, 28, 31, 20, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (99, 16, 28, 16, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (100, 18, 28, 4, CAST(2.00 AS Decimal(16, 2)))
GO
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (101, 4, 28, 3, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (102, 1, 28, 11, CAST(3.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (103, 28, 29, 20, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (104, 15, 29, 16, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (105, 14, 32, 4, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (106, 17, 32, 3, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (107, 11, 29, 3, CAST(17.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (108, 6, 34, 3, CAST(15.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (109, 10, 29, 3, CAST(14.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (110, 12, 33, 11, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (111, 10, 29, 11, CAST(14.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (112, 1, 35, 2, CAST(3.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (113, 5, 35, 1, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (114, 3, 35, 1, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (115, 3, 36, 1, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (116, 2, 36, 1, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (117, 28, 36, 4, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (118, 2, 37, 1, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (119, 26, 37, 5, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (120, 24, 37, 1, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (121, 7, 38, 1, CAST(20.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (122, 15, 38, 3, CAST(1.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (123, 12, 38, 1, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (124, 2, 39, 1, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (125, 3, 39, 1, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (126, 20, 39, 3, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (127, 14, 40, 1, CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (128, 16, 40, 3, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (129, 18, 40, 2, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (130, 3, 41, 1, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (131, 18, 41, 1, CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (132, 25, 41, 1, CAST(18.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (133, 4, 42, 1, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (134, 9, 42, 1, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (135, 7, 42, 2, CAST(20.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (136, 26, 43, 14, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (137, 19, 43, 9, CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (138, 25, 43, 7, CAST(18.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (139, 21, 43, 5, CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (140, 3, 44, 1, CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (141, 4, 44, 8, CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (142, 2, 44, 5, CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[order_line] ([id], [product_item_id], [order_id], [qty], [price]) VALUES (143, 16, 44, 1, CAST(2.00 AS Decimal(16, 2)))
GO
SET IDENTITY_INSERT [dbo].[order_status] ON 

INSERT [dbo].[order_status] ([id], [status]) VALUES (1, N'Ordered')
INSERT [dbo].[order_status] ([id], [status]) VALUES (2, N'Shipping')
INSERT [dbo].[order_status] ([id], [status]) VALUES (3, N'Arrived')
SET IDENTITY_INSERT [dbo].[order_status] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (1, 1, N'Com Tam', N'Com Tam is a Vietnamese dish featuring broken rice served with grilled pork, egg, pickled vegetables, and fish sauce.', N'comtam.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (2, 1, N'Pizza Super Supreme', N'Super Supreme pizza typically includes a variety of toppings like pepperoni, sausage, bell peppers, onions, olives, mushrooms, and sometimes additional meats or vegetables.', N'pizza.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (3, 1, N'Fried Chicken', N'Fried chicken is a dish where chicken pieces are coated in seasoned batter and deep-fried until crispy and golden brown.', N'fried-chicken.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (4, 1, N'Hamburger', N'A hamburger consists of a grilled beef patty, usually served in a bun, often with lettuce, tomato, cheese, and condiments.', N'hamburger.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (5, 1, N'Korean Spicy Noodles', N'Korean spicy noodles are typically ramen noodles coated in a fiery, flavorful sauce made with gochujang (chili paste) and other spices.', N'korean-spicy-noodles.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (6, 1, N'Banh Mi', N'Banh Mi is a Vietnamese sandwich featuring a crispy baguette filled with meats, pickled vegetables, cilantro, and chili peppers.', N'banh-mi.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (7, 1, N'Ramen', N'Ramen is a Japanese noodle soup consisting of Chinese-style wheat noodles in a flavorful broth, often topped with meat, eggs, and vegetables.', N'ramen.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (8, 2, N'Caprese Salad', N'Caprese Salad is a simple Italian dish made with fresh tomatoes, mozzarella cheese, basil leaves, olive oil, and balsamic vinegar, often seasoned with salt and pepper.', N'salad.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (9, 2, N'Falafel', N'Deep-fried chickpea balls, often served in pita bread with veggies and tahini sauce.', N'falafel.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (10, 2, N'Margherita Pizza', N'Margherita Pizza is a classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves, often drizzled with olive oil and seasoned with salt.', N'margherita-pizza.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (11, 2, N'Pho Chay', N'A vegetarian version of the traditional Vietnamese noodle soup, made with vegetable broth, rice noodles, tofu, and various vegetables.', N'pho.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (12, 2, N'Lentil Soup', N'Lentil soup: hearty, nutritious dish with lentils, vegetables, herbs, and spices, simmered until tender, perfect for comforting meals year-round.', N'lentil-soup.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (13, 2, N'Vegan Bibimbap', N'Bibimbap is a Korean rice dish topped with assorted vegetables, and often meat, served with spicy gochujang sauce.', N'bibimbap.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (14, 2, N'Japchae', N'Japchae is a Korean dish made with stir-fried sweet potato noodles, vegetables, mushrooms, and sometimes meat or tofu, seasoned with soy sauce and sesame oil.', N'japchae.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (15, 3, N'Water', N'Water is a fundamental substance for life, composed of hydrogen and oxygen. It is essential for hydration and necessary for many bodily functions.', N'water.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (16, 3, N'Pepsi', N'Pepsi is a popular carbonated cola beverage known for its sweet taste and widespread global consumption.', N'pepsi.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (17, 3, N'Orange Juice', N'Orange juice is a refreshing beverage made from squeezing oranges, known for its tangy and sweet flavor.', N'orange-juice.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (18, 3, N'7 Up', N'7 Up is a lemon-lime flavored soda known for its crisp and refreshing taste, enjoyed worldwide.', N'7-up.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (19, 3, N'Vinamilk', N'Vinamilk is a Vietnamese dairy company known for producing a variety of milk and dairy products, widely recognized in Vietnam and internationally.', N'vinamilk.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (20, 3, N'Matcha Latte', N'Matcha latte is a green tea-based beverage made with finely ground matcha powder, steamed milk, and sometimes sweetened with honey or sugar.', N'matcha.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (21, 3, N'Mango Smoothies', N'A mango smoothie blends ripe mangoes with yogurt, milk, and honey, creating a refreshing and creamy drink enjoyed chilled.', N'smoothie.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (22, 4, N'Cakes', N'Cake is a sweet dessert made from flour, sugar, eggs, and butter, often baked and decorated with frosting or icing.', N'cake.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (23, 4, N'Banh Trang Tron', N'Banh Trang Tron is a Vietnamese street food salad made with rice paper, herbs, peanuts, and various sauces.', N'banh-trang-tron.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (24, 4, N'Pannacotta', N'Panna cotta is an Italian dessert made of cream, milk, sugar, and gelatin, often served with fruit coulis or caramel.', N'panna.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (25, 4, N'Fruit', N'Fruit refers to the edible part of plants, typically sweet or sour, such as apples, oranges, bananas, and berries, enjoyed fresh or cooked.', N'fruit.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (26, 4, N'Beer', N'Beer is an alcoholic beverage made from fermented grains, hops, yeast, and water, enjoyed for its various flavors, styles, and cultural significance worldwide.', N'beer.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (27, 4, N'Vegetable', N'Vegetables are nutrient-rich plant foods eaten raw or cooked, providing essential vitamins, minerals, and fiber for a healthy diet.', N'veget.jpg')
INSERT [dbo].[product] ([id], [category_id], [name], [description], [product_image]) VALUES (28, 4, N'Spice', N'Spices are aromatic plant substances used to flavor food, derived from seeds, fruits, roots, or bark, enhancing dishes globally.', N'spice.jpg')
SET IDENTITY_INSERT [dbo].[product] OFF
GO
INSERT [dbo].[product_category] ([id], [category_name]) VALUES (1, N'Non-vegetarian')
INSERT [dbo].[product_category] ([id], [category_name]) VALUES (2, N'Vegetarian')
INSERT [dbo].[product_category] ([id], [category_name]) VALUES (3, N'Drinks')
INSERT [dbo].[product_category] ([id], [category_name]) VALUES (4, N'Others')
GO
SET IDENTITY_INSERT [dbo].[product_item] ON 

INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (1, 50, N'com-tam.jpg', CAST(3.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (2, 20, N'pizza-item.jpg', CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (3, 100, N'fried-chicken-item.jpg', CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (4, 200, N'hamburger-item.jpg', CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (5, 80, N'korean-noodles-item.jpg', CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (6, 400, N'banh-mi-item.jpg', CAST(15.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (7, 50, N'ramen-item.jpg', CAST(20.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (8, 100, N'salad-item.jpg', CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (9, 20, N'falafel-item.jpg', CAST(10.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (10, 50, N'vegen-pizza.jpg', CAST(14.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (11, 120, N'pho-item.jpg', CAST(17.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (12, 50, N'soup-item.jpg', CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (13, 40, N'bibimbap-item.jpg', CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (14, 60, N'japchae-item.jpg', CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (15, 500, N'water-item.jpg', CAST(1.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (16, 200, N'pepsi-item.jpg', CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (17, 60, N'juice-item.jpg', CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (18, 100, N'7-up-item.jpg', CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (19, 400, N'milk-item.jpg', CAST(4.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (20, 70, N'latte-item.jpg', CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (21, 150, N'smoothie-item.jpg', CAST(9.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (22, 60, N'cake-item.jpg', CAST(25.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (23, 200, N'banh-trang-tron-item.jpg', CAST(8.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (24, 500, N'panna-item.jpg', CAST(2.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (25, 100, N'fruit-item.jpg', CAST(18.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (26, 600, N'beer-item.jpg', CAST(5.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (27, 400, N'vegetable-item.jpg', CAST(6.00 AS Decimal(16, 2)))
INSERT [dbo].[product_item] ([id], [qty_in_stock], [product_image], [price]) VALUES (28, 300, N'spice-item.jpg', CAST(4.00 AS Decimal(16, 2)))
SET IDENTITY_INSERT [dbo].[product_item] OFF
GO
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (1, 2, CAST(N'2024-03-20' AS Date), 0, CAST(469.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (2, 3, CAST(N'2024-04-16' AS Date), 0, CAST(239.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (3, 2, CAST(N'2024-05-17' AS Date), 0, CAST(331.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (4, 4, CAST(N'2024-07-12' AS Date), 0, CAST(330.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (5, 5, CAST(N'2023-07-12' AS Date), 0, CAST(528.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (6, 5, CAST(N'2024-07-23' AS Date), 0, CAST(690.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (7, 6, CAST(N'2023-06-07' AS Date), 0, CAST(926.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (8, 6, CAST(N'2024-03-02' AS Date), 0, CAST(854.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (9, 7, CAST(N'2024-04-05' AS Date), 0, CAST(261.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (10, 7, CAST(N'2023-08-14' AS Date), 0, CAST(418.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (11, 8, CAST(N'2023-01-16' AS Date), 0, CAST(1131.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (12, 8, CAST(N'2024-02-18' AS Date), 0, CAST(568.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (13, 9, CAST(N'2024-05-20' AS Date), 0, CAST(734.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (14, 9, CAST(N'2023-10-23' AS Date), 0, CAST(620.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (15, 10, CAST(N'2023-11-02' AS Date), 0, CAST(156.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (16, 10, CAST(N'2024-07-05' AS Date), 0, CAST(128.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (17, 11, CAST(N'2023-12-10' AS Date), 0, CAST(209.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (18, 11, CAST(N'2023-09-13' AS Date), 0, CAST(364.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (19, 12, CAST(N'2024-07-14' AS Date), 0, CAST(436.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (20, 12, CAST(N'2023-12-17' AS Date), 0, CAST(323.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (21, 13, CAST(N'2024-07-21' AS Date), 0, CAST(138.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (22, 13, CAST(N'2023-11-25' AS Date), 0, CAST(166.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (23, 14, CAST(N'2024-06-26' AS Date), 0, CAST(185.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (24, 14, CAST(N'2024-05-28' AS Date), 0, CAST(374.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (25, 15, CAST(N'2023-04-20' AS Date), 0, CAST(589.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (26, 16, CAST(N'2023-01-20' AS Date), 0, CAST(230.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (27, 17, CAST(N'2024-02-20' AS Date), 0, CAST(238.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (28, 18, CAST(N'2023-11-20' AS Date), 0, CAST(91.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (29, 19, CAST(N'2024-02-20' AS Date), 0, CAST(359.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (30, 15, CAST(N'2024-06-20' AS Date), 0, CAST(10.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (31, 16, CAST(N'2024-04-20' AS Date), 0, CAST(80.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (32, 17, CAST(N'2024-07-20' AS Date), 0, CAST(31.00 AS Decimal(16, 2)), 3)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (33, 18, CAST(N'2023-12-20' AS Date), 0, CAST(44.00 AS Decimal(16, 2)), 2)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (34, 19, CAST(N'2024-03-20' AS Date), 0, CAST(45.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (35, 20, CAST(N'2024-07-14' AS Date), 11, CAST(20.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (36, 20, CAST(N'2024-07-14' AS Date), 11, CAST(31.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (37, 21, CAST(N'2024-07-14' AS Date), 11, CAST(37.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (38, 21, CAST(N'2024-07-14' AS Date), 11, CAST(27.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (39, 22, CAST(N'2024-07-14' AS Date), 11, CAST(39.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (40, 22, CAST(N'2024-07-14' AS Date), 11, CAST(18.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (41, 23, CAST(N'2024-07-14' AS Date), 11, CAST(25.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (42, 23, CAST(N'2024-07-14' AS Date), 11, CAST(56.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (43, 24, CAST(N'2024-07-14' AS Date), 11, CAST(277.00 AS Decimal(16, 2)), 1)
INSERT [dbo].[shop_order] ([id], [user_id], [order_date], [shipping_address], [order_total], [order_status_id]) VALUES (44, 24, CAST(N'2024-07-14' AS Date), 11, CAST(105.00 AS Decimal(16, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[user_site] ON 

INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (1, N'Nguyen Cong Hieu', N'male', N'male.jpg', N'hieunc@gmail.com', N'0975243876', N'ee608a70e3a536f1af3726bbd8bd0b55')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (2, N'Tran Gia Bao', N'male', N'male.jpg', N'baotg@gmail.com', N'0654735653', N'e405faf13f35eb5807579887f2e44220')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (3, N'Bach Cong Chinh', N'male', N'male.jpg', N'chinhbc@gmail.com', N'0846746347', N'b985d6107f576d8fce6bfc9c3ac7d57a')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (4, N'Mai Phuc Thanh', N'male', N'male.jpg', N'thanhmp@gmail.com', N'0846746999', N'e8dd6c0a56a63469dad05603a24531ee')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (5, N'Tran Van Cong', N'male', N'male.jpg', N'congtv@gmail.com', N'0975243876', N'192f99c517b1a72516fed808b975b2c8')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (6, N'Tran Dieu Nhi', N'female', N'female.jpg', N'nhitd@gmail.com', N'0263563876', N'e6638793ff0d8d1f5e42908c494547e6')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (7, N'Ong Cao Thang', N'male', N'male.jpg', N'thangoc@gmail.com', N'0864243898', N'6a8f03dd4e3b3520f4df9b76300431d3')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (8, N'Dong Nhi', N'female', N'female.jpg', N'nhid@gmail.com', N'0524243896', N'902ef3ceda10c004c0310417e121e479')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (9, N'Nguyen Tran Thanh', N'male', N'male.jpg', N'thanhnt@gmail.com', N'0745343877', N'2c0813259df4854e1cbe0b61bff8b5d5')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (10, N'Tran Hieu Nghia', N'male', N'male.jpg', N'hieunghia@gmail.com', N'0978269991', N'd6cb8ca4437003603e3f3f37deda8a81')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (11, N'Tran Thi Tuong Vi', N'female', N'female.jpg', N'vittt@gmail.com', N'0929876301', N'75401ea7400b2a1af78b23a0bea76b75')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (12, N'Le Ba Khanh Linh', N'female', N'female.jpg', N'linhlb@gmail.com', N'0962879812', N'72b882cecd5eb9559756e5a8bd1541be')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (13, N'Nguyen Viet Phuc', N'male', N'male.jpg', N'phucnv@gmail.com', N'0966537866', N'3c1a64c8a5f40afa071d7ca5a96e9724')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (14, N'Le Thinh', N'male', N'male.jpg', N'thinhlee@gmail.com', N'0793904185', N'fd43d4f43dba924d25adbb464e26776f')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (15, N'Trinh Cong Son', N'male', N'male.jpg', N'sontc@gmail.com', N'0911139921', N'3037b94dacb32ece1ef5ce2410e4a3f0')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (16, N'Ho Quang Hieu', N'male', N'male.jpg', N'hieuhq@gmail.com', N'0939113112', N'2c3e7abe114fb20d27cc5fd677819cd4')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (17, N'Bach Chau Trinh', N'female', N'female.jpg', N'trinhbc@gmail.com', N'0333133133', N'7c134b110ddd633b8041cefbddd4f881')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (18, N'Ho Vi Bao', N'male', N'male.jpg', N'baohv@gmail.com', N'0981981204', N'bd05c6d0466d7888d9bc10639d207dc8')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (19, N'Trinh Chi Vi', N'female', N'female.jpg', N'vitc@gmail.com', N'0135213124', N'5f699ae91554e3883bb746447e2a41c0')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (20, N'thanhdepchaivcl', N'male', N'male.jpg', N'thanhdepchaivcl@gmail.com', N'0213123423', N'81dc9bdb52d04dc20036dbd8313ed055')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (21, N'thosanlesbian', N'female', N'female.jpg', N'lesbianhunter@lmao.com', N'0358374659', N'81dc9bdb52d04dc20036dbd8313ed055')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (22, N'susu123', N'female', N'female.jpg', N'sugiabiengioi@gmail.com', N'0857365924', N'81dc9bdb52d04dc20036dbd8313ed055')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (23, N'vanvatthuagocu', N'male', N'male.jpg', N'vanvatthuagocu@email.com', N'0126836482', N'81dc9bdb52d04dc20036dbd8313ed055')
INSERT [dbo].[user_site] ([id], [username], [gender], [image], [email], [phone], [password]) VALUES (24, N'skibidi123', N'female', N'female.jpg', N'dopdopyesyes@gmail.com', N'0124738473', N'81dc9bdb52d04dc20036dbd8313ed055')
SET IDENTITY_INSERT [dbo].[user_site] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__user_sit__F3DBC572B1670293]    Script Date: 7/14/2024 1:52:24 PM ******/
ALTER TABLE [dbo].[user_site] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[order_line]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[shop_order] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[product_category] ([id])
GO
ALTER TABLE [dbo].[shop_order]  WITH CHECK ADD FOREIGN KEY([order_status_id])
REFERENCES [dbo].[order_status] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shop_order]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_site] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shopping_cart]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_site] ([id])
GO
ALTER TABLE [dbo].[shopping_cart_item]  WITH CHECK ADD FOREIGN KEY([cart_id])
REFERENCES [dbo].[shopping_cart] ([id])
GO
ALTER TABLE [dbo].[user_review]  WITH CHECK ADD FOREIGN KEY([ordered_product_id])
REFERENCES [dbo].[order_line] ([id])
GO
ALTER TABLE [dbo].[user_review]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_site] ([id])
GO
USE [master]
GO
ALTER DATABASE [FOODIES] SET  READ_WRITE 
GO
