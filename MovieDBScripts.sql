USE [master]
GO
/****** Object:  Database [DeltaxAssignment]    Script Date: 05/13/2018 17:24:28 ******/
CREATE DATABASE [DeltaxAssignment] ON  PRIMARY 
( NAME = N'DeltaxAssignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DeltaxAssignment.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DeltaxAssignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DeltaxAssignment_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DeltaxAssignment] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DeltaxAssignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DeltaxAssignment] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DeltaxAssignment] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DeltaxAssignment] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DeltaxAssignment] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DeltaxAssignment] SET ARITHABORT OFF
GO
ALTER DATABASE [DeltaxAssignment] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DeltaxAssignment] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DeltaxAssignment] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DeltaxAssignment] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DeltaxAssignment] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DeltaxAssignment] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DeltaxAssignment] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DeltaxAssignment] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DeltaxAssignment] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DeltaxAssignment] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DeltaxAssignment] SET  DISABLE_BROKER
GO
ALTER DATABASE [DeltaxAssignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DeltaxAssignment] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DeltaxAssignment] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DeltaxAssignment] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DeltaxAssignment] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DeltaxAssignment] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DeltaxAssignment] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DeltaxAssignment] SET  READ_WRITE
GO
ALTER DATABASE [DeltaxAssignment] SET RECOVERY FULL
GO
ALTER DATABASE [DeltaxAssignment] SET  MULTI_USER
GO
ALTER DATABASE [DeltaxAssignment] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DeltaxAssignment] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DeltaxAssignment', N'ON'
GO
USE [DeltaxAssignment]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 05/13/2018 17:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [nvarchar](50) NOT NULL,
	[MovieRelease] [datetime] NOT NULL,
	[Plot] [nvarchar](max) NOT NULL,
	[MovieImage] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Movies] ON
INSERT [dbo].[Movies] ([MovieId], [MovieName], [MovieRelease], [Plot], [MovieImage]) VALUES (1, N'Super', CAST(0x0000A8DE00000000 AS DateTime), N'image', N'movie')
INSERT [dbo].[Movies] ([MovieId], [MovieName], [MovieRelease], [Plot], [MovieImage]) VALUES (2, N'Super 2', CAST(0x0000A8D700000000 AS DateTime), N'image', N'movie')
INSERT [dbo].[Movies] ([MovieId], [MovieName], [MovieRelease], [Plot], [MovieImage]) VALUES (3, N'Super 3', CAST(0x0000A8D800000000 AS DateTime), N'image', N'butterfly.jpg')
INSERT [dbo].[Movies] ([MovieId], [MovieName], [MovieRelease], [Plot], [MovieImage]) VALUES (4, N'Super 4', CAST(0x0000A8DE00000000 AS DateTime), N'image', N'movie')
INSERT [dbo].[Movies] ([MovieId], [MovieName], [MovieRelease], [Plot], [MovieImage]) VALUES (5, N'Super 4', CAST(0x0000A8D700000000 AS DateTime), N'image', N'butterfly.jpg')
SET IDENTITY_INSERT [dbo].[Movies] OFF
/****** Object:  Table [dbo].[Gender]    Script Date: 05/13/2018 17:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Gender] ON
INSERT [dbo].[Gender] ([Id], [Name]) VALUES (1, N'Female')
INSERT [dbo].[Gender] ([Id], [Name]) VALUES (2, N'Male')
SET IDENTITY_INSERT [dbo].[Gender] OFF
/****** Object:  Table [dbo].[Actor]    Script Date: 05/13/2018 17:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[ActorId] [int] IDENTITY(1,1) NOT NULL,
	[ActorName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[ActorBio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[ActorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actor] ON
INSERT [dbo].[Actor] ([ActorId], [ActorName], [Gender], [DOB], [ActorBio]) VALUES (1, N'Sumi', N'1', CAST(0x0000A8E500000000 AS DateTime), N'sdsds')
INSERT [dbo].[Actor] ([ActorId], [ActorName], [Gender], [DOB], [ActorBio]) VALUES (2, N'Selvi', N'1', CAST(0x0000A8DE00000000 AS DateTime), N'Selvi is good actor.')
SET IDENTITY_INSERT [dbo].[Actor] OFF
/****** Object:  Table [dbo].[Producers]    Script Date: 05/13/2018 17:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[ProducerId] [int] IDENTITY(1,1) NOT NULL,
	[ProducerName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Producers] PRIMARY KEY CLUSTERED 
(
	[ProducerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Producers] ON
INSERT [dbo].[Producers] ([ProducerId], [ProducerName], [Gender], [DOB], [Bio]) VALUES (1, N'Sumithra', N'Female', CAST(0x0000A8DE00000000 AS DateTime), N'Sumithra is good Producer...')
INSERT [dbo].[Producers] ([ProducerId], [ProducerName], [Gender], [DOB], [Bio]) VALUES (2, N'Govindaraj', N'Male', CAST(0x0000A8DC00000000 AS DateTime), N'Govindaraj is good producer....')
SET IDENTITY_INSERT [dbo].[Producers] OFF
/****** Object:  Table [dbo].[MovieToProducer]    Script Date: 05/13/2018 17:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieToProducer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProducerId] [int] NOT NULL,
	[MovieId] [int] NOT NULL,
 CONSTRAINT [PK_MovieToProducer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MovieToProducer] ON
INSERT [dbo].[MovieToProducer] ([Id], [ProducerId], [MovieId]) VALUES (1, 1, 3)
INSERT [dbo].[MovieToProducer] ([Id], [ProducerId], [MovieId]) VALUES (2, 1, 4)
INSERT [dbo].[MovieToProducer] ([Id], [ProducerId], [MovieId]) VALUES (3, 1, 5)
SET IDENTITY_INSERT [dbo].[MovieToProducer] OFF
/****** Object:  Table [dbo].[MovieToActor]    Script Date: 05/13/2018 17:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieToActor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActorId] [int] NOT NULL,
	[MovieId] [int] NOT NULL,
 CONSTRAINT [PK_MovieToActor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MovieToActor] ON
INSERT [dbo].[MovieToActor] ([Id], [ActorId], [MovieId]) VALUES (1, 1, 3)
INSERT [dbo].[MovieToActor] ([Id], [ActorId], [MovieId]) VALUES (2, 2, 4)
INSERT [dbo].[MovieToActor] ([Id], [ActorId], [MovieId]) VALUES (3, 2, 5)
INSERT [dbo].[MovieToActor] ([Id], [ActorId], [MovieId]) VALUES (4, 1, 3)
INSERT [dbo].[MovieToActor] ([Id], [ActorId], [MovieId]) VALUES (5, 1, 3)
INSERT [dbo].[MovieToActor] ([Id], [ActorId], [MovieId]) VALUES (6, 1, 3)
INSERT [dbo].[MovieToActor] ([Id], [ActorId], [MovieId]) VALUES (7, 1, 3)
INSERT [dbo].[MovieToActor] ([Id], [ActorId], [MovieId]) VALUES (8, 1, 3)
INSERT [dbo].[MovieToActor] ([Id], [ActorId], [MovieId]) VALUES (9, 1, 3)
SET IDENTITY_INSERT [dbo].[MovieToActor] OFF
/****** Object:  StoredProcedure [dbo].[sp_DisplayOneMovie]    Script Date: 05/13/2018 17:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DisplayOneMovie] 
@MovieId int
AS
BEGIN
	SET NOCOUNT ON;
	
    SELECT MV.MovieId,MV.MovieName,MV.MovieRelease,MV.Plot,MV.MovieImage,
	PR.ProducerId,PR.ProducerName,PR.Gender,PR.DOB,PR.Bio FROM Movies MV 
	INNER JOIN MovieToProducer MP ON MP.MovieId=MV.MOVIEID
	INNER JOIN PRODUCERS PR ON PR.PRODUCERID=MP.PRODUCERID where MV.MOVIEID=@MovieId;
	--execute(@statement);
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DisplayAllMovie]    Script Date: 05/13/2018 17:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DisplayAllMovie] 
--@Con nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
    SELECT MV.MovieId,MV.MovieName,MV.MovieRelease,MV.Plot,MV.MovieImage,
	PR.ProducerId,PR.ProducerName,PR.Gender,PR.DOB,PR.Bio FROM Movies MV 
	INNER JOIN MovieToProducer MP ON MP.MovieId=MV.MOVIEID
	INNER JOIN PRODUCERS PR ON PR.PRODUCERID=MP.PRODUCERID
	--execute(@statement);
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AllActor]    Script Date: 05/13/2018 17:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_AllActor] 
	
AS
BEGIN
	
	SET NOCOUNT ON;

   SELECT AT.ActorId, AT.ActorName,MV.MovieId from ACTOR AT INNER JOIN
   MOVIETOACTOR MA ON AT.ACTORID=MA.ACTORID INNER JOIN
   MOVIES MV ON MV.MOVIEID=MA.MOVIEID
   
END
GO
/****** Object:  ForeignKey [FK_MovieId]    Script Date: 05/13/2018 17:24:31 ******/
ALTER TABLE [dbo].[MovieToProducer]  WITH CHECK ADD  CONSTRAINT [FK_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([MovieId])
GO
ALTER TABLE [dbo].[MovieToProducer] CHECK CONSTRAINT [FK_MovieId]
GO
/****** Object:  ForeignKey [FK_ProducerId]    Script Date: 05/13/2018 17:24:31 ******/
ALTER TABLE [dbo].[MovieToProducer]  WITH CHECK ADD  CONSTRAINT [FK_ProducerId] FOREIGN KEY([ProducerId])
REFERENCES [dbo].[Producers] ([ProducerId])
GO
ALTER TABLE [dbo].[MovieToProducer] CHECK CONSTRAINT [FK_ProducerId]
GO
/****** Object:  ForeignKey [FK_ActorId]    Script Date: 05/13/2018 17:24:31 ******/
ALTER TABLE [dbo].[MovieToActor]  WITH CHECK ADD  CONSTRAINT [FK_ActorId] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actor] ([ActorId])
GO
ALTER TABLE [dbo].[MovieToActor] CHECK CONSTRAINT [FK_ActorId]
GO
/****** Object:  ForeignKey [FK_MovieId2]    Script Date: 05/13/2018 17:24:31 ******/
ALTER TABLE [dbo].[MovieToActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieId2] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([MovieId])
GO
ALTER TABLE [dbo].[MovieToActor] CHECK CONSTRAINT [FK_MovieId2]
GO
