USE [DBBackEnd]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/3/2022 5:33:10 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RoleClaims]    Script Date: 4/3/2022 5:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Roles]    Script Date: 4/3/2022 5:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Roles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserClaims]    Script Date: 4/3/2022 5:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserLogins]    Script Date: 4/3/2022 5:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserRoles]    Script Date: 4/3/2022 5:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 4/3/2022 5:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[Id] [uniqueidentifier] NOT NULL,
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
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](250) NULL,
	[Avatar] [nvarchar](max) NULL,
	[Gender] [int] NULL,
 CONSTRAINT [PK_tbl_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserTokens]    Script Date: 4/3/2022 5:33:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](250) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220403101838_Initial', N'5.0.15')
GO
ALTER TABLE [dbo].[tbl_RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_tbl_RoleClaims_tbl_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbl_Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_RoleClaims] CHECK CONSTRAINT [FK_tbl_RoleClaims_tbl_Roles_RoleId]
GO
ALTER TABLE [dbo].[tbl_UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserClaims_tbl_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_UserClaims] CHECK CONSTRAINT [FK_tbl_UserClaims_tbl_Users_UserId]
GO
ALTER TABLE [dbo].[tbl_UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserLogins_tbl_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_UserLogins] CHECK CONSTRAINT [FK_tbl_UserLogins_tbl_Users_UserId]
GO
ALTER TABLE [dbo].[tbl_UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserRoles_tbl_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbl_Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_UserRoles] CHECK CONSTRAINT [FK_tbl_UserRoles_tbl_Roles_RoleId]
GO
ALTER TABLE [dbo].[tbl_UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserRoles_tbl_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_UserRoles] CHECK CONSTRAINT [FK_tbl_UserRoles_tbl_Users_UserId]
GO
ALTER TABLE [dbo].[tbl_UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserTokens_tbl_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_UserTokens] CHECK CONSTRAINT [FK_tbl_UserTokens_tbl_Users_UserId]
GO
