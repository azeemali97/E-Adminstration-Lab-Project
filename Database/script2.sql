USE [master]
GO
/****** Object:  Database [EAdminDB2]    Script Date: 7/19/2019 5:55:05 PM ******/
CREATE DATABASE [EAdminDB2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EAdminDB2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EAdminDB2.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EAdminDB2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EAdminDB2_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EAdminDB2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EAdminDB2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EAdminDB2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EAdminDB2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EAdminDB2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EAdminDB2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EAdminDB2] SET ARITHABORT OFF 
GO
ALTER DATABASE [EAdminDB2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EAdminDB2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EAdminDB2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EAdminDB2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EAdminDB2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EAdminDB2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EAdminDB2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EAdminDB2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EAdminDB2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EAdminDB2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EAdminDB2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EAdminDB2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EAdminDB2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EAdminDB2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EAdminDB2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EAdminDB2] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EAdminDB2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EAdminDB2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EAdminDB2] SET  MULTI_USER 
GO
ALTER DATABASE [EAdminDB2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EAdminDB2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EAdminDB2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EAdminDB2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EAdminDB2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EAdminDB2]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/19/2019 5:55:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Complains]    Script Date: 7/19/2019 5:55:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complains](
	[ComplainId] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[datetime] [nvarchar](max) NULL,
	[LabId] [int] NOT NULL,
	[SenderName] [nvarchar](max) NULL,
	[ResolveDate] [nvarchar](max) NULL,
	[Statics] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Complains] PRIMARY KEY CLUSTERED 
(
	[ComplainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 7/19/2019 5:55:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LabRequests]    Script Date: 7/19/2019 5:55:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabRequests](
	[LabRequestId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Resquest] [nvarchar](max) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_dbo.LabRequests] PRIMARY KEY CLUSTERED 
(
	[LabRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Labs]    Script Date: 7/19/2019 5:55:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Labs](
	[LabId] [int] IDENTITY(1,1) NOT NULL,
	[LabNo] [int] NOT NULL,
	[LabPc] [int] NOT NULL,
	[LabAc] [nvarchar](max) NULL,
	[labFan] [int] NOT NULL,
	[LabPrinter] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Labs] PRIMARY KEY CLUSTERED 
(
	[LabId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Members]    Script Date: 7/19/2019 5:55:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Cnic] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Members] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 7/19/2019 5:55:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[Day] [nvarchar](max) NULL,
	[Timing] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Total_Student] [nvarchar](max) NULL,
	[MemberId] [int] NOT NULL,
	[LabId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Schedules] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_LabId]    Script Date: 7/19/2019 5:55:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_LabId] ON [dbo].[Complains]
(
	[LabId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LabId]    Script Date: 7/19/2019 5:55:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_LabId] ON [dbo].[Schedules]
(
	[LabId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberId]    Script Date: 7/19/2019 5:55:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberId] ON [dbo].[Schedules]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Complains]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Complains_dbo.Labs_LabId] FOREIGN KEY([LabId])
REFERENCES [dbo].[Labs] ([LabId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Complains] CHECK CONSTRAINT [FK_dbo.Complains_dbo.Labs_LabId]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Schedules_dbo.Labs_LabId] FOREIGN KEY([LabId])
REFERENCES [dbo].[Labs] ([LabId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_dbo.Schedules_dbo.Labs_LabId]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Schedules_dbo.Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_dbo.Schedules_dbo.Members_MemberId]
GO
USE [master]
GO
ALTER DATABASE [EAdminDB2] SET  READ_WRITE 
GO
