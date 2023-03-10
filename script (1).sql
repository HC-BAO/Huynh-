USE [master]
GO
/****** Object:  Database [ltweb]    Script Date: 1/9/2023 9:31:33 PM ******/
CREATE DATABASE [ltweb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ltweb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ltweb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ltweb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ltweb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ltweb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ltweb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ltweb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ltweb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ltweb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ltweb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ltweb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ltweb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ltweb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ltweb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ltweb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ltweb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ltweb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ltweb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ltweb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ltweb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ltweb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ltweb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ltweb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ltweb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ltweb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ltweb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ltweb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ltweb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ltweb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ltweb] SET  MULTI_USER 
GO
ALTER DATABASE [ltweb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ltweb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ltweb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ltweb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ltweb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ltweb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ltweb] SET QUERY_STORE = OFF
GO
USE [ltweb]
GO
/****** Object:  Table [dbo].[Animals]    Script Date: 1/9/2023 9:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animals](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Animals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 1/9/2023 9:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [bigint] IDENTITY(7,1) NOT NULL,
	[Group] [varchar](50) NULL,
	[CourseName] [nvarchar](50) NULL,
	[Credit] [tinyint] NULL,
	[SubCode] [nvarchar](20) NULL,
	[Major] [nvarchar](150) NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 1/9/2023 9:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[ID] [int] NOT NULL,
	[Province] [nvarchar](255) NULL,
	[HeadCity] [nvarchar](255) NULL,
	[Section] [nvarchar](255) NULL,
	[YearOfFoundation] [float] NULL,
	[Population] [nvarchar](255) NULL,
	[Area] [nvarchar](255) NULL,
	[Desnity] [float] NULL,
	[AdminLevel] [float] NULL,
	[RegPlate] [float] NULL,
	[TelCode] [float] NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/9/2023 9:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](100) NULL,
	[LastLogin] [datetime] NULL,
	[Fullname] [nvarchar](50) NULL,
	[City] [nvarchar](150) NULL,
	[State] [nvarchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (1, N'Bella', 2, N'Mèo anh lông dài', 8599000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (2, N'Tigger', 1, N'Mèo anh lông dài', 8100000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (3, N'Chloe', 1, N'Mèo anh lông dài', 7650000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (4, N'Luna', 1, N'Mèo anh lông dài', 9000000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (5, N'Oliver', 1, N'Mèo anh lông ngán', 4599000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (6, N'Happy', 1, N'Mèo anh lông ngán', 3000000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (7, N'Nice', 2, N'Mèo anh lông ngán', 12000000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (8, N'Kitty', 2, N'Mèo anh lông dài', 6899000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (9, N'tara', 3, N'Mèo anh lông ngán', 6899000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (10, N'Milo', 2, N'Mèo anh lông dài', 13300000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (11, N'Sa', 3, N'Mèo anh lông dài', 6899000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (12, N'Tele', 1, N'Mèo anh lông ngan', 7900000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (13, N'Lusian', 2, N'Mèo anh lông dài', 3000000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (14, N'Cat', 1, N'Mèo anh lông dài', 5500500)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (15, N'Nasus', 5, N'Mèo anh lông dài', 2700000)
INSERT [dbo].[Animals] ([Id], [Name], [Age], [Type], [Price]) VALUES (16, N'Lux', 2, N'Mèo anh lông dài', 13000000)
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (1, N'20DTHQA1', N'Web Programming 1', 3, NULL, N'Computer Science', N'Mr Hao Lee')
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (2, N'20DTHQA1', N'Artifical Intelligence', 3, N'CMP169', N'Computer Science', N'Mr A')
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (3, N'20DTHQA1', N'Volley Ball', 2, N'PHT306', N'General', N'Mr B')
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (4, N'20DTHQA1', N'Java Programming', 3, N'CMP 101', N'Computer Science', N'Mr C')
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (5, N'20DTHQA1', N'English 9 ', 3, N'ENC 109', N'English', N'Mrs D')
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (6, N'20DTHQA1', N'AI', 3, N'MAT105', N'Math', N'Mrs E')
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (7, N'20DTHQA1', N'Web Programming 2', 3, NULL, N'Computer Science', N'Mr Hao Lee')
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (10, N'20DTHQA1', N'Web Programming 2', 3, NULL, N'Computer Science', N'Mr Hao Lee')
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Courses] ([Id], [Group], [CourseName], [Credit], [SubCode], [Major], [Note]) VALUES (12, N'20DTHQA1', N'Web Programming 2', 1, N'CMP101', N'AI', N'Mr E')
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (1, N'An Giang', N'Thành phố Long Xuyên', N'Đồng bằng sông Cửu Long', 1832, N'1.908.352', N'3.536,7', 540, 11, 67, 296)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (2, N'Bà Rịa – Vũng Tàu', N'Thành phố Bà Rịa', N'Đông Nam Bộ', 1899, N'1.148.313', N'1.980,8', 580, 8, 72, 254)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (3, N'Bạc Liêu', N'Thành phố Bạc Liêu', N'Đồng bằng sông Cửu Long', 1900, NULL, NULL, 340, 7, 94, 291)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (4, N'Bắc Giang', N'Thành phố Bắc Giang', N'Đông Bắc Bộ', 1895, N'1.803.950', N'3.851,4', 468, 10, NULL, 204)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (5, N'Bắc Kạn', N'Thành phố Bắc Kạn', N'Đông Bắc Bộ', 1900, NULL, NULL, 65, 8, 97, 209)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (6, N'Bắc Ninh', N'Thành phố Bắc Ninh', N'Đồng bằng sông Hồng', 1831, N'1.368.840', N'822,7', 1.664, 8, NULL, 222)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (7, N'Bến Tre', N'Thành phố Bến Tre', N'Đồng bằng sông Cửu Long', 1900, N'1.288.463', N'2.394,6', 538, 9, 71, 275)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (8, N'Bình Dương', N'Thành phố Thủ Dầu Một', N'Đông Nam Bộ', 1899, N'2.426.561', N'2.694,7', 900, 9, 61, 274)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (9, N'Bình Định', N'Thành phố Quy Nhơn', N'Duyên hải Nam Trung Bộ', 1799, N'1.486.918', N'6.066,2', 245, 11, 77, 256)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (10, N'Bình Phước', N'Thành phố Đồng Xoài', N'Đông Nam Bộ', 1971, NULL, NULL, 145, 11, 93, 271)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (11, N'Bình Thuận', N'Thành phố Phan Thiết', N'Duyên hải Nam Trung Bộ', 1697, N'1.230.808', N'7.812,8', 158, 10, 86, 252)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (12, N'Cà Mau', N'Thành phố Cà Mau', N'Đồng bằng sông Cửu Long', 1956, N'1.194.476', N'5.294,8', 226, 9, 69, 290)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (13, N'Cao Bằng', N'Thành phố Cao Bằng', N'Đông Bắc Bộ', 1499, NULL, N'6.700,3', 79, 10, 11, 206)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (14, N'Cần Thơ', N'Quận Ninh Kiều', N'Đồng bằng sông Cửu Long', 1900, N'1.235.171', N'1.439,2', 858, 9, 65, 292)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (15, N'Đà Nẵng', N'Quận Hải Châu', N'Duyên hải Nam Trung Bộ', 1889, N'1.134.310', N'1.284,9', 883, 8, 43, 236)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (16, N'Đắk Lắk', N'Thành phố Buôn Ma Thuột', N'Tây Nguyên', 1904, N'1.869.322', N'13.030,5', 143, 15, 47, 262)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (17, N'Đắk Nông', N'Thành phố Gia Nghĩa', N'Tây Nguyên', 2004, NULL, N'6.509,3', 96, 8, 48, 261)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (18, N'Điện Biên', N'Thành phố Điện Biên Phủ', N'Tây Bắc Bộ', 2004, NULL, NULL, 63, 10, 27, 215)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (19, N'Đồng Nai', N'Thành phố Biên Hòa', N'Đông Nam Bộ', 1808, N'3.097.107', N'5.905,7', 524, 11, NULL, 251)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (20, N'Đồng Tháp', N'Thành phố Cao Lãnh', N'Đồng bằng sông Cửu Long', 1976, N'1.599.504', N'3.383,8', 473, 12, 66, 277)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (21, N'Gia Lai', N'Thành phố Pleiku', N'Tây Nguyên', 1932, N'1.513.847', N'15.510,8', 98, 17, 81, 269)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (22, N'Hà Giang', N'Thành phố Hà Giang', N'Đông Bắc Bộ', 1891, NULL, N'7.929,5', 108, 11, 23, 219)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (23, N'Hà Nam', N'Thành phố Phủ Lý', N'Đồng bằng sông Hồng', 1890, NULL, N'860,9', 991, 6, 90, 226)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (24, N'Hà Nội', N'Quận Hoàn Kiếm', N'Đồng bằng sông Hồng', 1010, N'8.053.663', N'3.358,9', 2.398, 30, NULL, 24)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (25, N'Hà Tĩnh', N'Thành phố Hà Tĩnh', N'Bắc Trung Bộ', 1831, N'1.288.866', N'5.990,7', 215, 13, 38, 239)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (26, N'Hải Dương', N'Thành phố Hải Dương', N'Đồng bằng sông Hồng', 1469, N'1.892.254', N'1.668,2', 1.135, 12, 34, 220)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (27, N'Hải Phòng', N'Quận Hồng Bàng', N'Đồng bằng sông Hồng', 1888, N'2.028.514', N'1.522,5', 1.332, 15, NULL, 225)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (28, N'Hậu Giang', N'Thành phố Vị Thanh', N'Đồng bằng sông Cửu Long', 2004, NULL, N'1.621,8', 452, 8, 95, 293)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (29, N'Hòa Bình', N'Thành phố Hòa Bình', N'Tây Bắc Bộ', 1886, NULL, NULL, 186, 10, 28, 218)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (30, N'Thành phố Hồ Chí Minh', N'Quận 1', N'Đông Nam Bộ', 1697, N'8.993.082', NULL, 4.363, 22, NULL, 28)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (31, N'Hưng Yên', N'Thành phố Hưng Yên', N'Đồng bằng sông Hồng', 1831, N'1.252.731', N'930,2', 1.347, 10, 89, 221)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (32, N'Khánh Hòa', N'Thành phố Nha Trang', N'Duyên hải Nam Trung Bộ', 1832, N'1.231.107', N'5.137,8', 240, 9, 79, 258)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (33, N'Kiên Giang', N'Thành phố Rạch Giá', N'Đồng bằng sông Cửu Long', 1956, N'1.723.067', N'6.348,8', 271, 15, 68, 297)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (34, N'Kon Tum', N'Thành phố Kon Tum', N'Tây Nguyên', 1913, NULL, N'9.674,2', 56, 10, 82, 260)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (35, N'Lai Châu', N'Thành phố Lai Châu', N'Tây Bắc Bộ', 1909, NULL, N'9.068,8', 51, 8, 25, 213)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (36, N'Lạng Sơn', N'Thành phố Lạng Sơn', N'Đông Bắc Bộ', 1831, NULL, N'8.310,2', 94, 11, 12, 205)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (37, N'Lào Cai', N'Thành phố Lào Cai', N'Tây Bắc Bộ', 1907, NULL, NULL, 115, 9, 24, 214)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (38, N'Lâm Đồng', N'Thành phố Đà Lạt', N'Tây Nguyên', 1976, N'1.296.606', N'9.783,2', 133, 12, 49, 263)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (39, N'Long An', N'Thành phố Tân An', N'Đồng bằng sông Cửu Long', 1956, N'1.688.547', N'4.490,2', 376, 15, 62, 272)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (40, N'Nam Định', N'Thành phố Nam Định', N'Đồng bằng sông Hồng', 1822, N'1.780.393', NULL, 1.067, 10, 18, 228)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (41, N'Nghệ An', N'Thành phố Vinh', N'Bắc Trung Bộ', 1469, N'3.327.791', N'16.493,7', 202, 21, 37, 238)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (42, N'Ninh Bình', N'Thành phố Ninh Bình', N'Đồng bằng sông Hồng', 1831, NULL, NULL, 708, 8, 35, 229)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (43, N'Ninh Thuận', N'Thành phố Phan Rang – Tháp Chàm', N'Duyên hải Nam Trung Bộ', 1901, NULL, N'3.355,3', 176, 7, 85, 259)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (44, N'Phú Thọ', N'Thành phố Việt Trì', N'Đông Bắc Bộ', 1891, N'1.463.726', N'3.534,6', 414, 13, 19, 210)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (45, N'Phú Yên', N'Thành phố Tuy Hòa', N'Duyên hải Nam Trung Bộ', 1611, NULL, N'5.023,4', 191, 9, 78, 257)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (46, N'Quảng Bình', N'Thành phố Đồng Hới', N'Bắc Trung Bộ', 1604, NULL, N'8.065,3', 111, 8, 73, 232)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (47, N'Quảng Nam', N'Thành phố Tam Kỳ', N'Duyên hải Nam Trung Bộ', 1471, N'1.495.812', N'10.574,7', 141, 18, 92, 235)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (48, N'Quảng Ngãi', N'Thành phố Quảng Ngãi', N'Duyên hải Nam Trung Bộ', 1832, N'1.231.697', N'5.135,2', 240, 13, 76, 255)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (49, N'Quảng Ninh', N'Thành phố Hạ Long', N'Đông Bắc Bộ', 1963, N'1.320.324', N'6.177,7', 214, 13, 14, 203)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (50, N'Quảng Trị', N'Thành phố Đông Hà', N'Bắc Trung Bộ', 1832, NULL, N'4.739,8', 133, 10, 74, 233)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (51, N'Sóc Trăng', N'Thành phố Sóc Trăng', N'Đồng bằng sông Cửu Long', 1900, N'1.199.653', N'3.311,8', 362, 11, 83, 299)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (52, N'Sơn La', N'Thành phố Sơn La', N'Tây Bắc Bộ', 1895, N'1.248.415', N'14.123,5', 88, 12, 26, 212)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (53, N'Tây Ninh', N'Thành phố Tây Ninh', N'Đông Nam Bộ', 1900, N'1.169.165', N'4.041,4', 289, 9, 70, 276)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (54, N'Thái Bình', N'Thành phố Thái Bình', N'Đồng bằng sông Hồng', 1890, N'1.860.447', N'1.570,5', 1.185, 8, 17, 227)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (55, N'Thái Nguyên', N'Thành phố Thái Nguyên', N'Đông Bắc Bộ', 1397, N'1.286.751', N'3.536,4', 364, 9, 20, 208)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (56, N'Thanh Hóa', N'Thành phố Thanh Hóa', N'Bắc Trung Bộ', 1029, N'3.640.128', N'11.114,7', 328, 27, 36, 237)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (57, N'Thừa Thiên Huế', N'Thành phố Huế', N'Bắc Trung Bộ', 1822, N'1.128.620', N'5.048,2', 224, 9, 75, 234)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (58, N'Tiền Giang', N'Thành phố Mỹ Tho', N'Đồng bằng sông Cửu Long', 1976, N'1.764.185', N'2.510,5', 703, 11, 63, 273)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (59, N'Trà Vinh', N'Thành phố Trà Vinh', N'Đồng bằng sông Cửu Long', 1900, N'1.009.168', N'2.358,2', 428, 9, 84, 294)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (60, N'Tuyên Quang', N'Thành phố Tuyên Quang', N'Đông Bắc Bộ', 1469, NULL, N'5.867,9', 134, 7, 22, 207)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (61, N'Vĩnh Long', N'Thành phố Vĩnh Long', N'Đồng bằng sông Cửu Long', 1832, N'1.022.791', NULL, 693, 8, 64, 270)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (62, N'Vĩnh Phúc', N'Thành phố Vĩnh Yên', N'Đồng bằng sông Hồng', 1950, N'1.154.154', N'1.235,2', 934, 9, 88, 211)
INSERT [dbo].[Provinces] ([ID], [Province], [HeadCity], [Section], [YearOfFoundation], [Population], [Area], [Desnity], [AdminLevel], [RegPlate], [TelCode]) VALUES (63, N'Yên Bái', N'Thành phố Yên Bái', N'Tây Bắc Bộ', 1900, NULL, N'6.887,7', 119, 9, 21, 216)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [Username], [Password], [LastLogin], [Fullname], [City], [State], [ZipCode]) VALUES (0, N'43245', N'72fHvFgySoOhZKFC9/fpRmovXyUt4Zq5aLXWM3ojmF0=', NULL, N'Mark', N'Q1', N'3', N'2')
INSERT [dbo].[Users] ([id], [Username], [Password], [LastLogin], [Fullname], [City], [State], [ZipCode]) VALUES (1, N'Quy', N'123', CAST(N'2002-03-05T00:00:00.000' AS DateTime), N'Ho Tan Quy', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [Username], [Password], [LastLogin], [Fullname], [City], [State], [ZipCode]) VALUES (2, N'Quang', N'8EjqrjTmCcDpb1x9SqUao9QI6uwGM2nCbRXoGKrNjXY=', CAST(N'2002-08-04T00:00:00.000' AS DateTime), N'Nguyen Trinh Minh Quang', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [Username], [Password], [LastLogin], [Fullname], [City], [State], [ZipCode]) VALUES (3, N'adsa', N'vpvLUMHrJO5dgfdCAX9xPti1p00DbScP6naLHJkqiO0=', NULL, N'fsdfds', N'Q6', N'2', N'2')
INSERT [dbo].[Users] ([id], [Username], [Password], [LastLogin], [Fullname], [City], [State], [ZipCode]) VALUES (4, N'342', N'2p3BpW2sF65wjLb8KdoH45MeObpkHDe7WK0jGXVgqXI=', NULL, N'Ngan', N'Q6', N'10', N'2')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [ltweb] SET  READ_WRITE 
GO
