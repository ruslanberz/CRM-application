USE [master]
GO
/****** Object:  Database [CRM]    Script Date: 11/18/2018 10:19:02 PM ******/
CREATE DATABASE [CRM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CRM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CRM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CRM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CRM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CRM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CRM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CRM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CRM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CRM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CRM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CRM] SET ARITHABORT OFF 
GO
ALTER DATABASE [CRM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CRM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CRM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CRM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CRM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CRM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CRM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CRM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CRM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CRM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CRM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CRM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CRM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CRM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CRM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CRM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CRM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CRM] SET RECOVERY FULL 
GO
ALTER DATABASE [CRM] SET  MULTI_USER 
GO
ALTER DATABASE [CRM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CRM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CRM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CRM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CRM] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CRM', N'ON'
GO
ALTER DATABASE [CRM] SET QUERY_STORE = OFF
GO
USE [CRM]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 11/18/2018 10:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Text] [nvarchar](500) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/18/2018 10:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[ContactPerson] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[OfficePhoneNumber] [nvarchar](50) NOT NULL,
	[MobilePhone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[DeactivationDate] [datetime] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 11/18/2018 10:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [int] NOT NULL,
	[NotificationType] [tinyint] NOT NULL,
	[IsActive] [bit] NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/18/2018 10:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Administration] [bit] NOT NULL,
	[Moderation] [bit] NOT NULL,
	[CanView] [bit] NOT NULL,
	[Name] [nvarchar](20) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 11/18/2018 10:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime] NOT NULL,
	[DeadlineTime] [datetime] NOT NULL,
	[isFinised] [bit] NOT NULL,
	[FinishTime] [datetime] NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/18/2018 10:19:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[RoleID] [tinyint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentId], [CustomerID], [UserID], [Text], [CreationDate]) VALUES (14, 2, 1, N'Test message', CAST(N'2018-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [CustomerID], [UserID], [Text], [CreationDate]) VALUES (16, 2, 2, N'Test 2 message', CAST(N'2018-11-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [CustomerID], [UserID], [Text], [CreationDate]) VALUES (17, 4, 1, N'Add Comment test ', CAST(N'2018-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [CustomerID], [UserID], [Text], [CreationDate]) VALUES (18, 7, 1, N'Sony is a great company, but gread design is not good enough', CAST(N'2018-11-17T17:12:16.107' AS DateTime))
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [ContactPerson], [Address], [OfficePhoneNumber], [MobilePhone], [Email], [IsActive], [CreationDate], [DeactivationDate], [UserID]) VALUES (1, N'Compinternet', N'Tural Abdurəhmanov', N'28 street 25/17', N'+994124976968', N'+994513490069', N'tural@itelemali.az', 1, CAST(N'2018-09-12T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [ContactPerson], [Address], [OfficePhoneNumber], [MobilePhone], [Email], [IsActive], [CreationDate], [DeactivationDate], [UserID]) VALUES (2, N'Biləsuvar MMCC', N'Bağırlı Hüseyn', N'Təzəkənd kəndi 1/86', N'+994124972600', N'+994554001436', N'hr@bilasuvar.az', 1, CAST(N'2018-11-05T00:00:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [ContactPerson], [Address], [OfficePhoneNumber], [MobilePhone], [Email], [IsActive], [CreationDate], [DeactivationDate], [UserID]) VALUES (4, N'AzTelecom', N'Inarə x.', N'Azadlıq pr. 10', N'+994124985252', N'+994774205252', N'inare@aztelecom.az', 1, CAST(N'2018-11-15T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [ContactPerson], [Address], [OfficePhoneNumber], [MobilePhone], [Email], [IsActive], [CreationDate], [DeactivationDate], [UserID]) VALUES (5, N'AzerSun', N'Ziba x', N'Ziya Büynadov 17/14', N'+994124521252', N'+94505211212', N'contact@azersun.az', 1, CAST(N'2018-11-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [ContactPerson], [Address], [OfficePhoneNumber], [MobilePhone], [Email], [IsActive], [CreationDate], [DeactivationDate], [UserID]) VALUES (6, N'HP', N'Mr Robot', N'Robotics', N'+6525552644', N'+65215161616', N'contact@hp.com', 0, CAST(N'2018-11-02T00:00:00.000' AS DateTime), CAST(N'2018-10-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [ContactPerson], [Address], [OfficePhoneNumber], [MobilePhone], [Email], [IsActive], [CreationDate], [DeactivationDate], [UserID]) VALUES (7, N'Sony', N'Mr Smith', N'Amerika )', N'+6545464578', N'+95511514554', N'ceo@sony.com', 1, CAST(N'2018-11-05T00:00:00.000' AS DateTime), NULL, 3)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [ContactPerson], [Address], [OfficePhoneNumber], [MobilePhone], [Email], [IsActive], [CreationDate], [DeactivationDate], [UserID]) VALUES (8, N'Almali', N'Aliye x', N'Bakixanov 38/2512', N'+994125414147', N'+994704521246', N'contact@almali.az', 0, CAST(N'2018-10-05T00:00:00.000' AS DateTime), CAST(N'2018-11-05T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [ContactPerson], [Address], [OfficePhoneNumber], [MobilePhone], [Email], [IsActive], [CreationDate], [DeactivationDate], [UserID]) VALUES (9, N'CompGeek', N'Ruslan ', N'Baku', N'+994124124142', N'+994774524141', N'ceo@compgeek.az', 0, CAST(N'2018-08-14T00:00:00.000' AS DateTime), CAST(N'2018-11-16T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [ContactPerson], [Address], [OfficePhoneNumber], [MobilePhone], [Email], [IsActive], [CreationDate], [DeactivationDate], [UserID]) VALUES (10, N'CodeAcademy', N'Ulvi m.', N'Af moll business hous', N'+994124979797', N'+994774777774', N'123@code.edu.az', 1, CAST(N'2018-11-17T17:28:38.543' AS DateTime), NULL, 4)
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (1, 1006, 4, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (2, 1007, 3, 1, CAST(N'2018-11-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (3, 1008, 3, 0, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (5, 1010, 2, 0, CAST(N'2018-11-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (6, 1011, 3, 0, CAST(N'2018-11-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (7, 1012, 4, 0, CAST(N'2018-11-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (8, 1013, 4, 0, CAST(N'2018-11-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (9, 1014, 4, 0, CAST(N'2018-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (10, 1015, 3, 0, CAST(N'2018-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (11, 1016, 4, 0, CAST(N'2018-11-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (12, 1017, 3, 0, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (13, 1018, 4, 0, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (14, 1019, 4, 0, CAST(N'2018-11-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (15, 1020, 4, 0, CAST(N'2018-11-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (16, 1021, 4, 0, CAST(N'2018-11-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (17, 1022, 4, 1, CAST(N'2018-11-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (18, 1023, 4, 0, CAST(N'2018-11-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (19, 1024, 3, 1, CAST(N'2018-11-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Notifications] ([NotificationId], [TaskID], [NotificationType], [IsActive], [CreationDate]) VALUES (20, 1025, 2, 1, CAST(N'2018-11-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Notifications] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [Administration], [Moderation], [CanView], [Name]) VALUES (1, 0, 0, 1, N'Viewer')
INSERT [dbo].[Roles] ([RoleId], [Administration], [Moderation], [CanView], [Name]) VALUES (2, 0, 1, 1, N'User')
INSERT [dbo].[Roles] ([RoleId], [Administration], [Moderation], [CanView], [Name]) VALUES (3, 1, 1, 1, N'Administrator')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (2, 1, 1, N'Mənim birinci taskım', CAST(N'2018-11-11T00:00:00.000' AS DateTime), CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1002, 5, 1, N'Müqavilənin şərtlərini dəqiqləşdirmək üçün əlaqə saxlamaq', CAST(N'2018-11-13T16:04:03.620' AS DateTime), CAST(N'2018-11-13T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1003, 1, 1, N'for test', CAST(N'2018-11-13T16:06:06.713' AS DateTime), CAST(N'2018-11-13T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1004, 4, 1, N'Müqaviləni ləğv etmək', CAST(N'2018-11-13T16:08:07.597' AS DateTime), CAST(N'2018-11-17T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1005, 4, 1, N'Last', CAST(N'2018-11-13T16:27:51.723' AS DateTime), CAST(N'2018-11-24T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1006, 1, 1, N'Notifications Test', CAST(N'2018-11-13T16:36:05.260' AS DateTime), CAST(N'2018-11-28T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1007, 5, 2, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ', CAST(N'2018-11-13T19:30:27.230' AS DateTime), CAST(N'2018-11-24T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1008, 4, 2, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', CAST(N'2018-11-13T19:31:14.503' AS DateTime), CAST(N'2018-11-19T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1010, 1, 2, N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ', CAST(N'2018-11-13T19:46:12.350' AS DateTime), CAST(N'2018-11-15T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1011, 7, 1, N'Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes', CAST(N'2018-11-14T20:02:36.737' AS DateTime), CAST(N'2018-11-17T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1012, 5, 1, N'', CAST(N'2018-11-14T20:06:09.767' AS DateTime), CAST(N'2018-11-21T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1013, 5, 1, N'Consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.', CAST(N'2018-11-14T20:09:38.043' AS DateTime), CAST(N'2018-11-23T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1014, 4, 1, N'', CAST(N'2018-11-14T20:14:16.623' AS DateTime), CAST(N'2018-11-30T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1015, 5, 1, N'Consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.', CAST(N'2018-11-14T20:16:53.780' AS DateTime), CAST(N'2018-11-28T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1016, 4, 1, N'consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.', CAST(N'2018-11-14T20:17:14.143' AS DateTime), CAST(N'2018-11-17T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1017, 5, 1, N'ala bala', CAST(N'2018-11-14T20:18:40.827' AS DateTime), CAST(N'2018-11-16T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1018, 1, 1, N'', CAST(N'2018-11-14T20:21:28.813' AS DateTime), CAST(N'2018-11-24T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1019, 5, 1, N'nt.IsActive = false;', CAST(N'2018-11-14T20:26:02.477' AS DateTime), CAST(N'2018-11-17T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1020, 4, 1, N'Ala bala  boz keci', CAST(N'2018-11-14T20:28:18.047' AS DateTime), CAST(N'2018-11-24T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1021, 7, 1, N'z-index', CAST(N'2018-11-14T20:29:32.717' AS DateTime), CAST(N'2018-12-06T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1022, 1, 1, N'lastchance', CAST(N'2018-11-14T20:32:35.353' AS DateTime), CAST(N'2018-11-24T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1023, 1, 1, N'', CAST(N'2018-11-14T20:34:34.673' AS DateTime), CAST(N'2018-11-22T00:00:00.000' AS DateTime), 1, CAST(N'2018-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1024, 4, 1, N'Тааак,а  кто тут самый умный?)', CAST(N'2018-11-15T00:33:16.283' AS DateTime), CAST(N'2018-11-21T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[Tasks] ([TaskId], [CustomerID], [UserID], [Description], [CreationTime], [DeadlineTime], [isFinised], [FinishTime]) VALUES (1025, 5, 1, N'', CAST(N'2018-11-16T19:13:03.217' AS DateTime), CAST(N'2018-11-30T00:00:00.000' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Name], [Surname], [Username], [Password], [Email], [RoleID], [CreationDate], [CreatedBy]) VALUES (1, N'Ruslan', N'Bərziqyar', N'admin', N'okgoogle453', N'ruslan.berz@gmail.com', 3, CAST(N'2018-11-09T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Users] ([UserId], [Name], [Surname], [Username], [Password], [Email], [RoleID], [CreationDate], [CreatedBy]) VALUES (2, N'Kamran', N'Mirzəyev', N'kamran', N'123', N'kamran@code.edu.az', 2, CAST(N'2018-11-10T00:00:00.000' AS DateTime), N'admin')
INSERT [dbo].[Users] ([UserId], [Name], [Surname], [Username], [Password], [Email], [RoleID], [CreationDate], [CreatedBy]) VALUES (3, N'Aftandil', N'Abdullabəyli', N'aftandil', N'321', N'aftandil@code.edu.az', 1, CAST(N'2018-11-11T00:00:00.000' AS DateTime), N'admin')
INSERT [dbo].[Users] ([UserId], [Name], [Surname], [Username], [Password], [Email], [RoleID], [CreationDate], [CreatedBy]) VALUES (4, N'Zaur', N'Orucov', N'zaur', N'123321', N'zaur@code.local', 3, CAST(N'2018-11-12T00:00:00.000' AS DateTime), N'admin')
INSERT [dbo].[Users] ([UserId], [Name], [Surname], [Username], [Password], [Email], [RoleID], [CreationDate], [CreatedBy]) VALUES (5, N'Əhməd', N'Rəcəbov', N'aracabov', N'1234', N'aracabov@code.edu.az', 2, CAST(N'2018-11-13T00:00:00.000' AS DateTime), N'admin')
INSERT [dbo].[Users] ([UserId], [Name], [Surname], [Username], [Password], [Email], [RoleID], [CreationDate], [CreatedBy]) VALUES (1002, N'Rüstəm', N'Tağıyev', N'rustam', N'123', N'rustam@gmail.com', 2, CAST(N'2018-11-15T00:00:00.000' AS DateTime), N'admin')
INSERT [dbo].[Users] ([UserId], [Name], [Surname], [Username], [Password], [Email], [RoleID], [CreationDate], [CreatedBy]) VALUES (1003, N'Zamir', N'Aziz', N'zamir', N'345345', N'123321@az.az', 1, CAST(N'2018-11-01T00:00:00.000' AS DateTime), N'admin')
INSERT [dbo].[Users] ([UserId], [Name], [Surname], [Username], [Password], [Email], [RoleID], [CreationDate], [CreatedBy]) VALUES (1004, N'Yolchu', N'Nasib', N'yolchu', N'yolchu', N'yolchu@code.edu.az', 3, CAST(N'2018-11-17T17:21:08.900' AS DateTime), N'admin')
INSERT [dbo].[Users] ([UserId], [Name], [Surname], [Username], [Password], [Email], [RoleID], [CreationDate], [CreatedBy]) VALUES (1005, N'Sərxan', N'Sadiq', N'sarkhan', N'ok', N'123@sazz.az', 2, CAST(N'2018-11-18T12:39:00.783' AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF_Comments_CreationDate]  DEFAULT (((11)-(14))-(2018)) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_Administration]  DEFAULT ((0)) FOR [Administration]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_Moderation]  DEFAULT ((0)) FOR [Moderation]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_CanView]  DEFAULT ((1)) FOR [CanView]
GO
ALTER TABLE [dbo].[Tasks] ADD  CONSTRAINT [DF_Tasks_isFinised]  DEFAULT ((0)) FOR [isFinised]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Customers]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Users]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_Tasks1] FOREIGN KEY([TaskID])
REFERENCES [dbo].[Tasks] ([TaskId])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_Tasks1]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Customers]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [CRM] SET  READ_WRITE 
GO
