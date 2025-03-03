USE [master]
GO
/****** Object:  Database [DatabaseBloggingContext]    Script Date: 04/03/2024 2:05:58 PM ******/
CREATE DATABASE [DatabaseBloggingContext] ON  PRIMARY 
( NAME = N'DatabaseBloggingContext', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DatabaseBloggingContext.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DatabaseBloggingContext_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DatabaseBloggingContext_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DatabaseBloggingContext] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DatabaseBloggingContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DatabaseBloggingContext] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ARITHABORT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DatabaseBloggingContext] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DatabaseBloggingContext] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DatabaseBloggingContext] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DatabaseBloggingContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DatabaseBloggingContext] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DatabaseBloggingContext] SET  MULTI_USER 
GO
ALTER DATABASE [DatabaseBloggingContext] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DatabaseBloggingContext] SET DB_CHAINING OFF 
GO
USE [DatabaseBloggingContext]
GO
/****** Object:  Table [dbo].[BlogSets]    Script Date: 04/03/2024 2:05:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogSets](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Owner] [nvarchar](500) NULL,
	[Rank] [int] NULL,
 CONSTRAINT [PK_BlogSet] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostSets]    Script Date: 04/03/2024 2:05:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostSets](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[BlogBlogId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_PostSet] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BlogSets] ON 

INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (2, N'Văn hóa ', N'qqq/Vanhoa', N'Khoa hoc da dang', N'a', 1)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (3, N'Xã hội ', N'qq/Xahoi', N'Văn hóa đa dạng', N'Đauiep', NULL)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (6, N'Tự nhiên ', N'qq/tunhien', N'Khoa hoc da dang', N'Tiểu Điệp', 3)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (7, N'Kinh tế', N'qqq/kinhte', N'Văn hóa đa dạng', N'Đauiep', 16)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (9, N'Van hoa123', N'vanhoa/109', N'Văn hóa đa dạng', N'Tiểu Điệp', 4)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (10, N'AKhoa Hoc', N'khoahoc/123', N'a dang', N'k', 10)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (12, N'Khoa Hoc', N'vanhoa/1', N'CKhoa hoc da dang', N'Tiểu Điệp', 78)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (16, N'hoa123', N'vanhoa/1', N'Khoa hoc da dang', N'Tiểu Điệp', 15)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (17, N'Van hoa123', N'vanhoa/1', N'Khoa hoc da dang', N'dau diep', 7)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (18, N'sssssssssss', N'ssss', N'sssssssssssssssssss', N'Tiểu Điệp', 3)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (19, N'Van hoa123', N'vanhoa/1', N'Khoa hoc da dang', N'Tiểu Điệp', 3)
INSERT [dbo].[BlogSets] ([BlogId], [Name], [Url], [Description], [Owner], [Rank]) VALUES (20, N'Khoa Hoc', N'khoahoc/123', N'Văn hóa đa dạng', N'Tiểu Điệp', 1)
SET IDENTITY_INSERT [dbo].[BlogSets] OFF
GO
SET IDENTITY_INSERT [dbo].[PostSets] ON 

INSERT [dbo].[PostSets] ([PostId], [Title], [Content], [BlogBlogId], [CreatedDate]) VALUES (1, N'Bóng đá ', N'Ông Nguyễn Hữu Thắng trở thành tân
huấn luyện viên', 2, CAST(N'2024-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[PostSets] ([PostId], [Title], [Content], [BlogBlogId], [CreatedDate]) VALUES (2, N'Tiêm phòng', N'Tiêm phòng ngày 25/02/2012 ', 3, CAST(N'2024-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[PostSets] ([PostId], [Title], [Content], [BlogBlogId], [CreatedDate]) VALUES (3, N'Tin TN', N'Tin tự nhiên ', 3, CAST(N'2024-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[PostSets] ([PostId], [Title], [Content], [BlogBlogId], [CreatedDate]) VALUES (4, N'ABC11111', N'DEF1111111111111', 6, CAST(N'2024-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[PostSets] ([PostId], [Title], [Content], [BlogBlogId], [CreatedDate]) VALUES (11, N'Tiêm phòn', N'Tiêm phồng', 2, CAST(N'2024-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[PostSets] ([PostId], [Title], [Content], [BlogBlogId], [CreatedDate]) VALUES (13, N'aaaaa', N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaq', 19, CAST(N'2024-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[PostSets] ([PostId], [Title], [Content], [BlogBlogId], [CreatedDate]) VALUES (14, N'bbbbbbbbbbbbb', N'bbbbbbbbbbbbbbbbbbbbbbb', 19, CAST(N'2024-02-03T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PostSets] OFF
GO
ALTER TABLE [dbo].[PostSets]  WITH CHECK ADD  CONSTRAINT [FK_BlogPost] FOREIGN KEY([BlogBlogId])
REFERENCES [dbo].[BlogSets] ([BlogId])
GO
ALTER TABLE [dbo].[PostSets] CHECK CONSTRAINT [FK_BlogPost]
GO
USE [master]
GO
ALTER DATABASE [DatabaseBloggingContext] SET  READ_WRITE 
GO
