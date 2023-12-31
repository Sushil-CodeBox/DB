USE [master]
GO
/****** Object:  Database [DemoBlogDB]    Script Date: 07/28/2023 18:41:55 ******/
CREATE DATABASE [DemoBlogDB] ON  PRIMARY 
( NAME = N'DemoBlogDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DemoBlogDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DemoBlogDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DemoBlogDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DemoBlogDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoBlogDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoBlogDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DemoBlogDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DemoBlogDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DemoBlogDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DemoBlogDB] SET ARITHABORT OFF
GO
ALTER DATABASE [DemoBlogDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DemoBlogDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DemoBlogDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DemoBlogDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DemoBlogDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DemoBlogDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DemoBlogDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DemoBlogDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DemoBlogDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DemoBlogDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DemoBlogDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [DemoBlogDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DemoBlogDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DemoBlogDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DemoBlogDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DemoBlogDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DemoBlogDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DemoBlogDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DemoBlogDB] SET  READ_WRITE
GO
ALTER DATABASE [DemoBlogDB] SET RECOVERY FULL
GO
ALTER DATABASE [DemoBlogDB] SET  MULTI_USER
GO
ALTER DATABASE [DemoBlogDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DemoBlogDB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DemoBlogDB', N'ON'
GO
USE [DemoBlogDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230724115031_Initial', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230727092846_PostCommentLikeTable', N'6.0.10')
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers] 
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers] 
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2dfa568e-9e99-41e0-9f4a-b31225f10177', N'Harish', N'HARISH', N'Harish@gmail.com', N'HARISH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECd0YQ3UXriSbj7oM7OaPx+ZKfIjCNoKeF7AEVr4dnbEuOD9EyxYvJgcXiVhfER50A==', N'O6PZI2F2M642L4DUS7U53EL5T7WAO47N', N'4e14f44d-a98f-4602-8705-31c1a56b2ae6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'972d8a2c-3cc1-437a-bf93-6e69b9aa0695', N'Sushil', N'SUSHIL', N'sushilj02@gmail.com', N'SUSHILJ02@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAG+0jaoVDI5jRbfrtmMx+uc659ZMRlsiIYNERjOOHdGrH/DgBEmiWdVTmlnSgIxyg==', N'F6UQI3PNAI36HJZT2AVL2BMYBV5DHDMR', N'0d896e46-6aed-44b0-a04f-ab5490940b48', NULL, 0, 0, NULL, 1, 0)
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles] 
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[UserRefId] [nvarchar](450) NULL,
	[CommentCount] [int] NOT NULL,
	[LikeCount] [int] NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Posts] ON
INSERT [dbo].[Posts] ([id], [Title], [Description], [Date], [Image], [UserRefId], [CommentCount], [LikeCount]) VALUES (1, N'First Post', N'First post', CAST(0x0762FC9D9607A8450B AS DateTime2), N'\Upload\b89bab0f-b407-4f46-9aa1-69c382ca09e5_img1.jpg', NULL, 0, 0)
INSERT [dbo].[Posts] ([id], [Title], [Description], [Date], [Image], [UserRefId], [CommentCount], [LikeCount]) VALUES (2, N'Second Post', N'This is the Second Post', CAST(0x0785BCBDE608A8450B AS DateTime2), N'\Upload\af7f6509-c0ba-443c-a121-5e3bd9a240c8_img 2.jpg', NULL, 0, 0)
INSERT [dbo].[Posts] ([id], [Title], [Description], [Date], [Image], [UserRefId], [CommentCount], [LikeCount]) VALUES (3, N'Third Post', N'This is Third Post', CAST(0x076936188916A8450B AS DateTime2), N'\Upload\0f745a2f-2c9b-481e-82f6-1ae58de84e48_img4.jpg', NULL, 0, 0)
INSERT [dbo].[Posts] ([id], [Title], [Description], [Date], [Image], [UserRefId], [CommentCount], [LikeCount]) VALUES (4, N'Forth Post', N'Forth Post', CAST(0x0702AD44A316A8450B AS DateTime2), N'\Upload\6bafceb2-ab80-43d8-b2da-7c457e202a90_img3.jpg', NULL, 0, 0)
INSERT [dbo].[Posts] ([id], [Title], [Description], [Date], [Image], [UserRefId], [CommentCount], [LikeCount]) VALUES (5, N'Fifth Post', N'Fifth Post', CAST(0x078EED98B460A8450B AS DateTime2), N'\Upload\e48be20c-64a4-4caf-8846-0694b2d4425f_img3.jpg', NULL, 0, 0)
INSERT [dbo].[Posts] ([id], [Title], [Description], [Date], [Image], [UserRefId], [CommentCount], [LikeCount]) VALUES (6, N'Sixth Post', N'“We cannot solve problems with the kind of thinking we employed when we came up with them.” — Albert Einstein', CAST(0x07F8C862CE77A8450B AS DateTime2), N'Upload\b2ca447d-53b0-4621-adf5-6a724b520841_img6.jpg', NULL, 0, 0)
INSERT [dbo].[Posts] ([id], [Title], [Description], [Date], [Image], [UserRefId], [CommentCount], [LikeCount]) VALUES (7, N'7th Post', N'“Learn as if you will live forever, live like you will die tomorrow.” — Mahatma Gandhi', CAST(0x077E92635678A8450B AS DateTime2), N'/Upload\a17b60dd-ddc8-4518-9feb-f3feb07efa19_img5.jpg', NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[Posts] OFF
/****** Object:  Table [dbo].[Likes]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PostRefID] [int] NOT NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Likes_PostRefID] ON [dbo].[Likes] 
(
	[PostRefID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentText] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[PostRefID] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Comments_PostRefID] ON [dbo].[Comments] 
(
	[PostRefID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 07/28/2023 18:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Likes_Posts_PostRefID]    Script Date: 07/28/2023 18:41:55 ******/
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Posts_PostRefID] FOREIGN KEY([PostRefID])
REFERENCES [dbo].[Posts] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Posts_PostRefID]
GO
/****** Object:  ForeignKey [FK_Comments_Posts_PostRefID]    Script Date: 07/28/2023 18:41:55 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts_PostRefID] FOREIGN KEY([PostRefID])
REFERENCES [dbo].[Posts] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts_PostRefID]
GO
/****** Object:  ForeignKey [FK_AspNetUserTokens_AspNetUsers_UserId]    Script Date: 07/28/2023 18:41:55 ******/
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetRoleClaims_AspNetRoles_RoleId]    Script Date: 07/28/2023 18:41:55 ******/
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetRoles_RoleId]    Script Date: 07/28/2023 18:41:55 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetUsers_UserId]    Script Date: 07/28/2023 18:41:55 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserLogins_AspNetUsers_UserId]    Script Date: 07/28/2023 18:41:55 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserClaims_AspNetUsers_UserId]    Script Date: 07/28/2023 18:41:55 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
