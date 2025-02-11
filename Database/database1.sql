USE [master]
GO
/****** Object:  Database [TT_QLHS]    Script Date: 22/12/2020 10:35 AM ******/
CREATE DATABASE [TT_QLHS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TT_QLHS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TT_QLHS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TT_QLHS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TT_QLHS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TT_QLHS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TT_QLHS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TT_QLHS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TT_QLHS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TT_QLHS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TT_QLHS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TT_QLHS] SET ARITHABORT OFF 
GO
ALTER DATABASE [TT_QLHS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TT_QLHS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TT_QLHS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TT_QLHS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TT_QLHS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TT_QLHS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TT_QLHS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TT_QLHS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TT_QLHS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TT_QLHS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TT_QLHS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TT_QLHS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TT_QLHS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TT_QLHS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TT_QLHS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TT_QLHS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TT_QLHS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TT_QLHS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TT_QLHS] SET  MULTI_USER 
GO
ALTER DATABASE [TT_QLHS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TT_QLHS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TT_QLHS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TT_QLHS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TT_QLHS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TT_QLHS] SET QUERY_STORE = OFF
GO
USE [TT_QLHS]
GO
/****** Object:  Table [dbo].[BangDiem]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiem](
	[idBangDiem] [int] IDENTITY(1,1) NOT NULL,
	[diem15phut] [float] NULL,
	[diem45phut] [float] NULL,
	[diemHocKi] [float] NULL,
	[idMonHoc] [int] NULL,
	[idHocSinh] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBangDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[idGiaoVien] [int] IDENTITY(1,1) NOT NULL,
	[tenGiaoVien] [nvarchar](50) NOT NULL,
	[gioiTinh] [nvarchar](4) NULL,
	[ngaySinh] [date] NULL,
	[soDienThoai] [nvarchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[idGiaoVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[idHocSinh] [int] IDENTITY(1,1) NOT NULL,
	[tenHocSinh] [nvarchar](50) NOT NULL,
	[gioiTinh] [nvarchar](4) NULL,
	[ngaySinh] [date] NULL,
	[idLopHoc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[idLopHoc] [int] IDENTITY(1,1) NOT NULL,
	[tenLopHoc] [nvarchar](50) NOT NULL,
	[tenKhoi] [nvarchar](3) NULL,
	[namHoc] [nvarchar](20) NULL,
	[idGiaoVienChuNhiem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLopHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[idMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[tenMonHoc] [nvarchar](50) NOT NULL,
	[soTietHoc] [int] NULL,
	[namHoc] [nvarchar](10) NULL,
	[kiHoc] [int] NULL,
	[idGiaoVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BangDiem] ON 

INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (1, 7, 7.5, 8.5, 1, 1)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (2, 6.5, 7, 5.5, 1, 2)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (3, 7.5, 7.5, 8, 1, 3)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (4, 8, 7.5, 8.5, 1, 4)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (5, 7, 6.5, 9.5, 1, 5)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (6, 6, 7.5, 8, 1, 6)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (7, 6.5, 7, 8.5, 1, 7)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (8, 7.5, 7.5, 7.5, 1, 8)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (9, 6.5, 8.5, 7.5, 1, 9)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (10, 7, 7.5, 8.5, 1, 10)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (11, 6.5, 7, 5.5, 1, 11)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (12, 7.5, 7.5, 8, 1, 12)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (13, 8, 7.5, 8.5, 1, 13)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (14, 7, 6.5, 9.5, 1, 14)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (15, 6, 7.5, 8, 1, 15)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (16, 6.5, 7, 8.5, 1, 16)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (17, 7.5, 7.5, 7.5, 1, 17)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (18, 6.5, 8.5, 7.5, 1, 18)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (19, 7, 7.5, 8.5, 2, 1)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (20, 6.5, 7, 5.5, 2, 2)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (21, 7.5, 7.5, 8, 2, 3)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (22, 8, 7.5, 8.5, 2, 4)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (23, 7, 6.5, 9.5, 2, 5)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (24, 6, 7.5, 8, 2, 6)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (25, 6.5, 7, 8.5, 2, 7)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (26, 7.5, 7.5, 7.5, 2, 8)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (27, 6.5, 8.5, 7.5, 2, 9)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (28, 7, 7.5, 8.5, 2, 10)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (29, 6.5, 7, 5.5, 2, 11)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (30, 7.5, 7.5, 8, 2, 12)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (31, 8, 7.5, 8.5, 2, 13)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (32, 7, 6.5, 9.5, 2, 14)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (33, 6, 7.5, 8, 2, 15)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (34, 6.5, 7, 8.5, 2, 16)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (35, 7.5, 7.5, 7.5, 2, 17)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (36, 6.5, 8.5, 7.5, 2, 18)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (37, 7, 7.5, 8.5, 3, 1)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (38, 6.5, 7, 5.5, 3, 2)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (39, 7.5, 7.5, 8, 3, 3)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (40, 8, 7.5, 8.5, 3, 4)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (41, 7, 6.5, 9.5, 3, 5)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (42, 6, 7.5, 8, 3, 6)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (43, 6.5, 7, 8.5, 3, 7)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (44, 7.5, 7.5, 7.5, 3, 8)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (45, 6.5, 8.5, 7.5, 3, 9)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (46, 7, 7.5, 8.5, 3, 10)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (47, 6.5, 7, 5.5, 3, 11)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (48, 7.5, 7.5, 8, 3, 12)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (49, 8, 7.5, 8.5, 3, 13)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (50, 7, 6.5, 9.5, 3, 14)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (51, 6, 7.5, 8, 3, 15)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (52, 6.5, 7, 8.5, 3, 16)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (53, 7.5, 7.5, 7.5, 3, 17)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (54, 6.5, 8.5, 7.5, 3, 18)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (55, 7, 7.5, 8.5, 4, 1)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (56, 6.5, 7, 5.5, 4, 2)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (57, 7.5, 7.5, 8, 4, 3)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (58, 8, 7.5, 8.5, 4, 4)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (59, 7, 6.5, 9.5, 4, 5)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (60, 6, 7.5, 8, 4, 6)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (61, 6.5, 7, 8.5, 4, 7)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (62, 7.5, 7.5, 7.5, 4, 8)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (63, 6.5, 8.5, 7.5, 4, 9)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (64, 7, 7.5, 8.5, 4, 10)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (65, 6.5, 7, 5.5, 4, 11)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (66, 7.5, 7.5, 8, 4, 12)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (67, 8, 7.5, 8.5, 4, 13)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (68, 7, 6.5, 9.5, 4, 14)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (69, 6, 7.5, 8, 4, 15)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (70, 6.5, 7, 8.5, 4, 16)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (71, 7.5, 7.5, 7.5, 4, 17)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (72, 6.5, 8.5, 7.5, 4, 18)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (73, 7, 7.5, 8.5, 5, 1)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (74, 6.5, 7, 5.5, 5, 2)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (75, 7.5, 7.5, 8, 5, 3)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (76, 8, 7.5, 8.5, 5, 4)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (77, 7, 6.5, 9.5, 5, 5)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (78, 6, 7.5, 8, 5, 6)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (79, 6.5, 7, 8.5, 5, 7)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (80, 7.5, 7.5, 7.5, 5, 8)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (81, 6.5, 8.5, 7.5, 5, 9)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (82, 7, 7.5, 8.5, 5, 10)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (83, 6.5, 7, 5.5, 5, 11)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (84, 7.5, 7.5, 8, 5, 12)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (85, 8, 7.5, 8.5, 5, 13)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (86, 7, 6.5, 9.5, 5, 14)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (87, 6, 7.5, 8, 5, 15)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (88, 6.5, 7, 8.5, 5, 16)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (89, 7.5, 7.5, 7.5, 5, 17)
INSERT [dbo].[BangDiem] ([idBangDiem], [diem15phut], [diem45phut], [diemHocKi], [idMonHoc], [idHocSinh]) VALUES (90, 6.5, 8.5, 7.5, 5, 18)
SET IDENTITY_INSERT [dbo].[BangDiem] OFF
SET IDENTITY_INSERT [dbo].[GiaoVien] ON 

INSERT [dbo].[GiaoVien] ([idGiaoVien], [tenGiaoVien], [gioiTinh], [ngaySinh], [soDienThoai]) VALUES (1, N'Nguyễn Thanh Huyền', N'Nữ', CAST(N'1986-10-05' AS Date), N'0966741169')
INSERT [dbo].[GiaoVien] ([idGiaoVien], [tenGiaoVien], [gioiTinh], [ngaySinh], [soDienThoai]) VALUES (2, N'Hoàng Nguyên Hải', N'Nam', CAST(N'1990-11-11' AS Date), N'0358944651')
INSERT [dbo].[GiaoVien] ([idGiaoVien], [tenGiaoVien], [gioiTinh], [ngaySinh], [soDienThoai]) VALUES (3, N'Nguyễn Đức Thanh', N'Nam', CAST(N'1980-06-13' AS Date), N'0359975889')
INSERT [dbo].[GiaoVien] ([idGiaoVien], [tenGiaoVien], [gioiTinh], [ngaySinh], [soDienThoai]) VALUES (4, N'Phạm Minh Ngọc', N'Nữ', CAST(N'1992-12-07' AS Date), N'0166741169')
INSERT [dbo].[GiaoVien] ([idGiaoVien], [tenGiaoVien], [gioiTinh], [ngaySinh], [soDienThoai]) VALUES (5, N'Nguyễn Thanh Tâm', N'Nữ', CAST(N'1991-09-12' AS Date), N'0328247456')
INSERT [dbo].[GiaoVien] ([idGiaoVien], [tenGiaoVien], [gioiTinh], [ngaySinh], [soDienThoai]) VALUES (6, N'Nguyễn Đức Hoàng', N'Nam', CAST(N'1989-02-18' AS Date), N'0973909306')
INSERT [dbo].[GiaoVien] ([idGiaoVien], [tenGiaoVien], [gioiTinh], [ngaySinh], [soDienThoai]) VALUES (7, N'Vũ Văn Hùng', N'Nam', CAST(N'1985-03-03' AS Date), N'0358123456')
INSERT [dbo].[GiaoVien] ([idGiaoVien], [tenGiaoVien], [gioiTinh], [ngaySinh], [soDienThoai]) VALUES (8, N'Nguyễn Văn Hưng', N'Nam', CAST(N'1990-12-24' AS Date), N'0359446438')
INSERT [dbo].[GiaoVien] ([idGiaoVien], [tenGiaoVien], [gioiTinh], [ngaySinh], [soDienThoai]) VALUES (9, N'Trần Hoàng Mai', N'Nữ', CAST(N'1991-04-15' AS Date), N'0327444666')
SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
SET IDENTITY_INSERT [dbo].[HocSinh] ON 

INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (1, N'Nguyễn Trường An', N'Nam', CAST(N'1999-11-04' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (2, N'Nguyễn Thị Thanh Thùy', N'Nữ', CAST(N'1999-12-11' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (3, N'Nguyễn Thị Kim Khánh', N'Nữ', CAST(N'1999-06-11' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (4, N'Nguyễn Quốc khánh', N'Nam', CAST(N'1999-08-09' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (5, N'Nguyễn Đình Đại', N'Nam', CAST(N'1999-12-13' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (6, N'Bùi Văn Dương', N'Nam', CAST(N'1999-10-18' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (7, N'Nguyễn Ngọc Hưng', N'Nam', CAST(N'1999-11-04' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (8, N'Nguyễn Văn Kiên', N'Nam', CAST(N'1999-07-02' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (9, N'Đào Anh Tú', N'Nam', CAST(N'1999-10-20' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (10, N'Nguyễn Anh Dũng', N'Nam', CAST(N'1998-12-04' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (11, N'Thái Bá Tuyên', N'Nam', CAST(N'1999-05-11' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (12, N'Dương Đức Anh', N'Nam', CAST(N'1999-02-21' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (13, N'Lê Anh Thắng', N'Nam', CAST(N'1998-03-09' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (14, N'Phạm Trọng Linh', N'Nam', CAST(N'1999-03-02' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (15, N'Huỳnh Văn Tá', N'Nam', CAST(N'1999-04-12' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (16, N'Lê Thị Linh', N'Nữ', CAST(N'1999-12-11' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (17, N'Trần Quỳnh Nga', N'Nữ', CAST(N'1999-11-01' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (18, N'Nguyễn Thị Thúy Quỳnh', N'Nữ', CAST(N'1999-06-08' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (19, N'Trần Sang Anh', N'Nam', CAST(N'1999-11-23' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (20, N'Lê Duy Dũng', N'Nam', CAST(N'1999-12-11' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (21, N'Nguyễn Mạnh Cường', N'Nam', CAST(N'1999-04-16' AS Date), 1)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (22, N'Mạnh Tuấn Đạt', N'Nam', CAST(N'1999-04-17' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (23, N'Qoách Phương Nam', N'Nam', CAST(N'1999-01-10' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (24, N'Lê Văn Phiêu', N'Nam', CAST(N'1999-08-09' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (25, N'Lê Văn Tú', N'Nam', CAST(N'1999-02-05' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (26, N'Trần Hoàng An', N'Nữ', CAST(N'1998-03-08' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (27, N'Trần Thị Lan Anh', N'Nữ', CAST(N'1998-10-20' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (28, N'Nguyễn Văn Tuấn', N'Nam', CAST(N'1999-11-11' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (29, N'Nguyễn Đình Hà', N'Nam', CAST(N'1999-01-15' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (30, N'Trần Xuân Hùng', N'Nam', CAST(N'1999-10-04' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (31, N'Nguyễn Đăng Quang', N'Nam', CAST(N'1999-11-27' AS Date), 2)
INSERT [dbo].[HocSinh] ([idHocSinh], [tenHocSinh], [gioiTinh], [ngaySinh], [idLopHoc]) VALUES (32, N'Nguyễn Văn Hùng', N'Nam', CAST(N'1999-05-12' AS Date), 2)
SET IDENTITY_INSERT [dbo].[HocSinh] OFF
SET IDENTITY_INSERT [dbo].[LopHoc] ON 

INSERT [dbo].[LopHoc] ([idLopHoc], [tenLopHoc], [tenKhoi], [namHoc], [idGiaoVienChuNhiem]) VALUES (1, N'10', N'A', N'2020 - 2021', 1)
INSERT [dbo].[LopHoc] ([idLopHoc], [tenLopHoc], [tenKhoi], [namHoc], [idGiaoVienChuNhiem]) VALUES (2, N'10', N'B', N'2020 - 2021', 2)
INSERT [dbo].[LopHoc] ([idLopHoc], [tenLopHoc], [tenKhoi], [namHoc], [idGiaoVienChuNhiem]) VALUES (3, N'10', N'C', N'2020 - 2021', 3)
INSERT [dbo].[LopHoc] ([idLopHoc], [tenLopHoc], [tenKhoi], [namHoc], [idGiaoVienChuNhiem]) VALUES (4, N'11', N'A', N'2020 - 2021', 4)
INSERT [dbo].[LopHoc] ([idLopHoc], [tenLopHoc], [tenKhoi], [namHoc], [idGiaoVienChuNhiem]) VALUES (5, N'11', N'B', N'2020 - 2021', 5)
INSERT [dbo].[LopHoc] ([idLopHoc], [tenLopHoc], [tenKhoi], [namHoc], [idGiaoVienChuNhiem]) VALUES (6, N'11', N'C', N'2020 - 2021', 6)
INSERT [dbo].[LopHoc] ([idLopHoc], [tenLopHoc], [tenKhoi], [namHoc], [idGiaoVienChuNhiem]) VALUES (7, N'12', N'A', N'2020 - 2021', 7)
INSERT [dbo].[LopHoc] ([idLopHoc], [tenLopHoc], [tenKhoi], [namHoc], [idGiaoVienChuNhiem]) VALUES (8, N'12', N'B', N'2020 - 2021', 8)
INSERT [dbo].[LopHoc] ([idLopHoc], [tenLopHoc], [tenKhoi], [namHoc], [idGiaoVienChuNhiem]) VALUES (9, N'12', N'C', N'2020 - 2021', 9)
SET IDENTITY_INSERT [dbo].[LopHoc] OFF
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (1, N'Toán', 60, N'2020-2021', 1, 1)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (2, N'Văn', 60, N'2020-2021', 1, 2)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (3, N'Tiếng Anh', 45, N'2020-2021', 1, 3)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (4, N'Tin học', 30, N'2020-2021', 1, 4)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (5, N'Địa lý', 35, N'2020-2021', 1, 5)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (6, N'Lịch sử', 45, N'2020-2021', 1, 6)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (7, N'Giáo dục công dân', 40, N'2020-2021', 1, 7)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (8, N'Thể dục', 50, N'2020-2021', 1, 8)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (9, N'Toán', 60, N'2020-2021', 2, 1)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (10, N'Văn', 60, N'2020-2021', 2, 2)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (11, N'Tiếng Anh', 45, N'2020-2021', 2, 3)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (12, N'Tin học', 30, N'2020-2021', 2, 4)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (13, N'Địa lý', 35, N'2020-2021', 2, 5)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (14, N'Lịch sử', 45, N'2020-2021', 2, 6)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (15, N'Giáo dục công dân', 40, N'2020-2021', 2, 7)
INSERT [dbo].[MonHoc] ([idMonHoc], [tenMonHoc], [soTietHoc], [namHoc], [kiHoc], [idGiaoVien]) VALUES (16, N'Thể dục', 50, N'2020-2021', 2, 8)
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
ALTER TABLE [dbo].[GiaoVien] ADD  DEFAULT (N'Nam') FOR [gioiTinh]
GO
ALTER TABLE [dbo].[GiaoVien] ADD  DEFAULT (getdate()) FOR [ngaySinh]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD FOREIGN KEY([idHocSinh])
REFERENCES [dbo].[HocSinh] ([idHocSinh])
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD FOREIGN KEY([idMonHoc])
REFERENCES [dbo].[MonHoc] ([idMonHoc])
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD FOREIGN KEY([idLopHoc])
REFERENCES [dbo].[LopHoc] ([idLopHoc])
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD FOREIGN KEY([idGiaoVienChuNhiem])
REFERENCES [dbo].[GiaoVien] ([idGiaoVien])
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD FOREIGN KEY([idGiaoVien])
REFERENCES [dbo].[GiaoVien] ([idGiaoVien])
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD CHECK  (([gioiTinh]=N'Nữ' OR [gioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD CHECK  (([kiHoc]=(2) OR [kiHoc]=(1)))
GO
/****** Object:  StoredProcedure [dbo].[SP_BangDiem_Delete]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_BangDiem_Delete]
  @idBangDiem INT
AS
BEGIN
  DELETE BangDiem
  WHERE idBangDiem = @idBangDiem
END

GO
/****** Object:  StoredProcedure [dbo].[SP_BangDiem_GetAll]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------Bang Diem------------------------
CREATE PROCEDURE [dbo].[SP_BangDiem_GetAll]
AS
BEGIN
  SELECT *
  FROM BangDiem
END

GO
/****** Object:  StoredProcedure [dbo].[SP_BangDiem_GetByIdMonHoc]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BangDiem_GetByIdMonHoc]
	@idMonHoc int
AS
BEGIN
  SELECT *
  FROM BangDiem
  WHERE idMonHoc = @idMonHoc
END

GO
/****** Object:  StoredProcedure [dbo].[SP_BangDiem_Insert]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BangDiem_Insert]
  @diem15phut FLOAT,
  @diem45phut FLOAT,
  @diemHocKi FLOAT,
  @idMonHoc INT,
  @idHocSinh INT
AS
BEGIN
  INSERT INTO BangDiem
    (diem15phut, diem45phut, diemHocKi, idMonHoc, idHocSinh)
  VALUES(@diem15phut, @diem45phut, @diemHocKi, @idMonHoc, @idHocSinh)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_BangDiem_Search]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_BangDiem_Search]
  @searchValue NVARCHAR(200)
AS
BEGIN
  SELECT *
  FROM BangDiem
  WHERE idBangDiem LIKE N'%' + @searchValue + '%'
    OR diem15phut LIKE N'%' + @searchValue + '%'
    OR diem45phut LIKE N'%' + @searchValue + '%'
    OR diemHocKi LIKE N'%' + @searchValue + '%'
    OR idMonHoc LIKE N'%' + @searchValue + '%'
    OR idHocSinh LIKE N'%' + @searchValue + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_BangDiem_Update]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_BangDiem_Update]
  @idBangDiem INT,
  @diem15phut FLOAT,
  @diem45phut FLOAT,
  @diemHocKi FLOAT,
  @idMonHoc INT,
  @idHocSinh INT
AS
BEGIN
  UPDATE BangDiem
  SET diem15phut = @diem15phut,
  diem45phut = @diem45phut,
  diemHocKi = @diemHocKi,
  idMonHoc = @idMonHoc,
  idHocSinh = @idHocSinh
  WHERE idBangDiem = @idBangDiem
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoVien_Delete]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GiaoVien_Delete]
  @idGiaoVien INT
AS
BEGIN
  UPDATE LopHoc
  SET idGiaoVienChuNhiem = NULL
  WHERE idGiaoVienChuNhiem = @idGiaoVien

  UPDATE MonHoc
  SET idGiaoVien = NULL
  WHERE idGiaoVien = @idGiaoVien

  DELETE GiaoVien
  WHERE idGiaoVien = @idGiaoVien
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoVien_GetAll]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------Giao Vien------------------------
CREATE PROCEDURE [dbo].[SP_GiaoVien_GetAll]
AS
BEGIN
  SELECT *
  FROM GiaoVien
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoVien_Insert]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GiaoVien_Insert]
  @tenGiaoVien NVARCHAR(50),
  @gioiTinh NVARCHAR(4),
  @ngaySinh DATE,
  @soDienThoai NVARCHAR(12)
AS
BEGIN
  INSERT INTO GiaoVien
    (tenGiaoVien, gioiTinh, ngaySinh, soDienThoai)
  VALUES(@tenGiaoVien, @gioiTinh, @ngaySinh, @soDienThoai)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoVien_Search]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GiaoVien_Search]
  @searchValue NVARCHAR(200)
AS
BEGIN
  SELECT *
  FROM GiaoVien
  WHERE idGiaoVien LIKE N'%' + @searchValue + '%'
    OR idGiaoVien LIKE N'%' + @searchValue + '%'
    OR tenGiaoVien LIKE N'%' + @searchValue + '%'
    OR gioiTinh LIKE N'%' + @searchValue + '%'
    OR ngaySinh LIKE N'%' + @searchValue + '%'
    OR soDienThoai LIKE N'%' + @searchValue + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoVien_Update]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GiaoVien_Update]
  @idGiaoVien INT,
  @tenGiaoVien NVARCHAR(50),
  @gioiTinh NVARCHAR(4),
  @ngaySinh DATE,
  @soDienThoai NVARCHAR(12)
AS
BEGIN
  UPDATE GiaoVien
  SET tenGiaoVien = @tenGiaoVien,
  gioiTinh = @gioiTinh,
  ngaySinh = @ngaySinh,
  soDienThoai = @soDienThoai
  WHERE idGiaoVien = @idGiaoVien
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HocSinh_Delete]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HocSinh_Delete]
  @idHocSinh INT
AS
BEGIN
  DELETE BangDiem
  WHERE idHocSinh = @idHocSinh
  DELETE HocSinh
  WHERE idHocSinh = @idHocSinh
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HocSinh_GetAll]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------------------Hoc Sinh------------------------
CREATE PROCEDURE [dbo].[SP_HocSinh_GetAll]
AS
BEGIN
  SELECT *
  FROM HocSinh
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HocSinh_Insert]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HocSinh_Insert]
  @tenHocSinh NVARCHAR(50),
  @gioiTinh NVARCHAR(4),
  @ngaySinh DATE,
  @idLopHoc INT
AS
BEGIN
  INSERT INTO HocSinh
    (tenHocSinh, gioiTinh, ngaySinh, idLopHoc)
  VALUES(@tenHocSinh, @gioiTinh, @ngaySinh, @idLopHoc)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HocSinh_Search]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HocSinh_Search]
  @searchValue NVARCHAR(200)
AS
BEGIN
  SELECT *
  FROM HocSinh
  WHERE idHocSinh LIKE N'%' + @searchValue + '%'
    OR tenHocSinh LIKE N'%' + @searchValue + '%'
    OR gioiTinh LIKE N'%' + @searchValue + '%'
    OR ngaySinh LIKE N'%' + @searchValue + '%'
    OR idLopHoc LIKE N'%' + @searchValue + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HocSinh_Update]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HocSinh_Update]
  @idHocSinh INT,
  @tenHocSinh NVARCHAR(50),
  @gioiTinh NVARCHAR(4),
  @ngaySinh DATE,
  @idLopHoc INT
AS
BEGIN
  UPDATE HocSinh
  SET tenHocSinh = @tenHocSinh,
  gioiTinh = @gioiTinh,
  ngaySinh = @ngaySinh,
  idLopHoc = @idLopHoc
  WHERE idHocSinh = @idHocSinh
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LopHoc_Delete]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LopHoc_Delete]
  @idLopHoc INT
AS
BEGIN
  UPDATE HocSinh
  SET idLopHoc = NULL
  WHERE idLopHoc = @idLopHoc
  DELETE LopHoc
  WHERE idLopHoc = @idLopHoc
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LopHoc_GetAll]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------Lop Hoc------------------------
CREATE PROCEDURE [dbo].[SP_LopHoc_GetAll]
AS
BEGIN
  SELECT *
  FROM LopHoc
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LopHoc_Insert]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LopHoc_Insert]
  @tenLopHoc NVARCHAR(50),
  @tenKhoi NVARCHAR(3),
  @namHoc NVARCHAR(10),
  @idGiaoVienChuNhiem INT
AS
BEGIN
  INSERT INTO LopHoc
    (tenLopHoc, tenKhoi, namHoc, idGiaoVienChuNhiem)
  VALUES(@tenLopHoc, @tenKhoi, @namHoc, @idGiaoVienChuNhiem)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LopHoc_Search]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LopHoc_Search]
  @searchValue NVARCHAR(50)
AS
BEGIN
  SELECT *
  FROM LopHoc
  WHERE idLopHoc LIKE N'%' + @searchValue + '%'
    OR tenLopHoc LIKE N'%' + @searchValue + '%'
    OR tenKhoi LIKE N'%' + @searchValue + '%'
    OR namHoc LIKE N'%' + @searchValue + '%'
    OR idGiaoVienChuNhiem LIKE N'%' + @searchValue + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LopHoc_Update]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LopHoc_Update]
  @idLopHoc INT,
  @tenLopHoc NVARCHAR(50),
  @tenKhoi NVARCHAR(3),
  @namHoc NVARCHAR(10),
  @idGiaoVienChuNhiem INT
AS
BEGIN
  UPDATE LopHoc
  SET tenLopHoc = @tenLopHoc,
  tenKhoi = @tenKhoi,
  namHoc = @namHoc,
  idGiaoVienChuNhiem = @idGiaoVienChuNhiem
  WHERE idLopHoc = @idLopHoc
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MonHoc_Delete]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_MonHoc_Delete]
  @idMonHoc INT
AS
BEGIN
  DELETE BangDiem
  WHERE idMonHoc = @idMonHoc
  DELETE MonHoc
  WHERE idMonHoc = @idMonHoc
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MonHoc_GetAll]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-----------------------Mon Hoc------------------------
CREATE PROCEDURE [dbo].[SP_MonHoc_GetAll]
AS
BEGIN
  SELECT *
  FROM MonHoc
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MonHoc_Insert]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_MonHoc_Insert]
  @tenMonHoc NVARCHAR(50),
  @soTietHoc INT,
  @namHoc NVARCHAR(10),
  @kiHoc INT,
  @idGiaoVien int
AS
BEGIN
  INSERT INTO MonHoc
    (tenMonHoc, soTietHoc, namHoc, kiHoc, idGiaoVien)
  VALUES(@tenMonHoc, @soTietHoc, @namHoc, @kiHoc, @idGiaoVien)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MonHoc_Search]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_MonHoc_Search]
  @searchValue NVARCHAR(50)
AS
BEGIN
  SELECT *
  FROM MonHoc
  WHERE idMonHoc LIKE N'%' + @searchValue + '%'
    OR tenMonHoc LIKE N'%' + @searchValue + '%'
    OR soTietHoc LIKE N'%' + @searchValue + '%'
    OR namHoc LIKE N'%' + @searchValue + '%'
    OR kiHoc LIKE N'%' + @searchValue + '%'
    OR idGiaoVien LIKE N'%' + @searchValue + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MonHoc_Update]    Script Date: 22/12/2020 10:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_MonHoc_Update]
  @idMonHoc INT,
  @tenMonHoc NVARCHAR(50),
  @soTietHoc INT,
  @namHoc NVARCHAR(10),
  @kiHoc INT,
  @idGiaoVien INT
AS
BEGIN
  UPDATE MonHoc
  SET tenMonHoc = @tenMonHoc,
      soTietHoc = @soTietHoc,
      namHoc = @namHoc,
      kiHoc = @kiHoc,
      idGiaoVien = @idGiaoVien
  WHERE idMonHoc = @idMonHoc
END

GO
USE [master]
GO
ALTER DATABASE [TT_QLHS] SET  READ_WRITE 
GO
