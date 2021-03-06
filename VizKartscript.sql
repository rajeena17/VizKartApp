USE [master]
GO
/****** Object:  Database [BulkyBook]    Script Date: 11/16/2021 9:28:44 AM ******/
CREATE DATABASE [BulkyBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BulkyBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BulkyBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BulkyBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BulkyBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BulkyBook] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BulkyBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BulkyBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BulkyBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BulkyBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BulkyBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BulkyBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [BulkyBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BulkyBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BulkyBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BulkyBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BulkyBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BulkyBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BulkyBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BulkyBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BulkyBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BulkyBook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BulkyBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BulkyBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BulkyBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BulkyBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BulkyBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BulkyBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BulkyBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BulkyBook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BulkyBook] SET  MULTI_USER 
GO
ALTER DATABASE [BulkyBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BulkyBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BulkyBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BulkyBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BulkyBook] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BulkyBook] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BulkyBook] SET QUERY_STORE = OFF
GO
USE [BulkyBook]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/16/2021 9:28:44 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/16/2021 9:28:44 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/16/2021 9:28:44 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/16/2021 9:28:44 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/16/2021 9:28:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/16/2021 9:28:44 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/16/2021 9:28:44 AM ******/
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
	[City] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[CompanyId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/16/2021 9:28:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/16/2021 9:28:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 11/16/2021 9:28:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[IsAuthorizedCompany] [bit] NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoverTypes]    Script Date: 11/16/2021 9:28:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoverTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CoverTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/16/2021 9:28:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 11/16/2021 9:28:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippingDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[TrackingNumber] [nvarchar](max) NULL,
	[Carrier] [nvarchar](max) NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentDueDate] [datetime2](7) NOT NULL,
	[TransactionId] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/16/2021 9:28:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ISBN] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[ListPrice] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Price50] [float] NOT NULL,
	[Price100] [float] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[CoverTypeId] [int] NOT NULL,
	[QuantityAvailable] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 11/16/2021 9:28:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191230003509_AddDefaultIdentityMigration', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191230005102_AddCategoryToDb', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191231212424_addCoverTypeToDb', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191231213959_AddStoredProcForCoverType', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191231220058_addProductToDb', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191231220154_addValidationToProduct', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200103233627_AddUserPropertiesToDb', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200103234252_AddCompanyToDb', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200103234505_addCompanyIdToUser', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200104210703_AddShoppingCartAndOrderHeaderAndDetailsToDb', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200105212251_addValidationOnOrderHeader', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211115084426_ProductToDb.cs', N'3.1.0')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'72df305f-4da0-45e7-9d27-cadccbbf17ab', N'Company Customer', N'COMPANY CUSTOMER', N'6291e50a-a7a9-4fbd-85cd-7e396a684481')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'afdc541d-66bc-4c32-9f6f-0f8fd3b81c10', N'Employee', N'EMPLOYEE', N'cbdd3fca-827f-49db-b4f5-2f97d95771b0')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c855f996-1820-4b51-ba81-e5458dbb02df', N'Admin', N'ADMIN', N'63ccc3b7-656f-4c3f-a973-8cedbd6407d4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd891cd94-3e2b-4aa6-a61d-979ae958dbf3', N'Individual Customer', N'INDIVIDUAL CUSTOMER', N'6c89f80d-d379-4b89-89d3-96246d10ded6')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f0c8f1c6-7e73-4bf7-a536-c976a2750320', N'c855f996-1820-4b51-ba81-e5458dbb02df')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1316a691-afdd-49f8-86cc-665721e7941f', N'd891cd94-3e2b-4aa6-a61d-979ae958dbf3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c723ee4-fbf4-4a15-839a-ed7e0660efb3', N'd891cd94-3e2b-4aa6-a61d-979ae958dbf3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'773b46fc-07f7-4c76-b03a-7c3cd7e99529', N'd891cd94-3e2b-4aa6-a61d-979ae958dbf3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a5eac8fb-bc25-4c8e-ba0e-bfa3df38797b', N'd891cd94-3e2b-4aa6-a61d-979ae958dbf3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ab8bb9d1-e703-4cc0-844c-a44c4e294d25', N'd891cd94-3e2b-4aa6-a61d-979ae958dbf3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ce8d3dc4-226b-4c30-94c9-72c080e45f8d', N'd891cd94-3e2b-4aa6-a61d-979ae958dbf3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ed9f6670-7f9b-4611-aaab-d67ebececa62', N'd891cd94-3e2b-4aa6-a61d-979ae958dbf3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'1316a691-afdd-49f8-86cc-665721e7941f', N'rajeenabangalore@gmail.com', N'RAJEENABANGALORE@GMAIL.COM', N'rajeenabangalore@gmail.com', N'RAJEENABANGALORE@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPvv2TZ3lMb6T2u9Lx2mA1Q16jALhSIcbLpkQUHKIYFJuzh8KLEnSbKiK6zFN5LuvA==', N'MRYVHAB33ROCOVR7TKKZFD5FVIF2I4CO', N'73f71398-e9e7-4209-8556-075a2813539c', N'9036327185', 0, 0, NULL, 1, 0, N'Nagarabhavi', N'Rajeena', N'560072', N'Karnataka', N'Kalyan Nagar', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'3c723ee4-fbf4-4a15-839a-ed7e0660efb3', N'ganeshshettybrmls@gmail.com', N'GANESHSHETTYBRMLS@GMAIL.COM', N'ganeshshettybrmls@gmail.com', N'GANESHSHETTYBRMLS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIie4dE2UNyzUWRmrjKavd0lEeHg5moNscjOrk58g+dCn15o17cvnY8vNPiOlEyq3w==', N'2HRUS7Y6U7IFTUNZS2VN45VOECUWUOLJ', N'a9433f8d-660d-4300-a5e5-5e940848c46d', N'9980233298', 0, 0, NULL, 1, 0, N'bengaluru', N'Ganesh', N'560058', N'karnataka', N'laggere', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'773b46fc-07f7-4c76-b03a-7c3cd7e99529', N'viharashettygs@gmail.com', N'VIHARASHETTYGS@GMAIL.COM', N'viharashettygs@gmail.com', N'VIHARASHETTYGS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMrOsO3jthM3Xeej74o0Wcn7UQl6EztgMLdpSQBeKbA6ExVOkwkfydXQtafPaFQtmg==', N'SMUX5TYKK6ILOTQWMJRSJTVIKDPTJ76D', N'59fe24d2-7bed-49d3-8747-28e042cad439', N'9898989898', 0, 0, NULL, 1, 0, N'canada', N'Vihara', N'789090', N'USA', N'laggeri', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'a5eac8fb-bc25-4c8e-ba0e-bfa3df38797b', N'vatsa@gmail.com', N'VATSA@GMAIL.COM', N'vatsa@gmail.com', N'VATSA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJkqpye5IZYXnM/JfXXKlctumPZJPU0KT4sRGTk2qpC0VLSNwHBHflWTgAs5s7Hqrw==', N'NEDHGSTJWZB7NKUJ37MR3AQHUJBVOHY7', N'0485c948-e008-41ab-9e20-38b702d4f720', N'6363421063', 0, 0, NULL, 1, 3, N'shanthi nagar', N'Vatsa', N'581402', N'Karnataka', N'richmond circle', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'ab8bb9d1-e703-4cc0-844c-a44c4e294d25', N'rajeena@gmail.com', N'RAJEENA@GMAIL.COM', N'rajeena@gmail.com', N'RAJEENA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECecEUOcib1wt6CkM272I/XYb1V21l9+879TUxdzC5YNkyLrMqFVn5WQKQPTEjOEnQ==', N'ST3HQ2SDGJ4RJPNC4KARXOG6NZCIDDIC', N'403fabca-a96e-40ea-823a-cdc022cfc3a5', N'9901558426', 0, 0, NULL, 1, 0, N'Bangalore', N'Rajee', N'560040', N'Karnataka', N'Vijaynagar', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'ce8d3dc4-226b-4c30-94c9-72c080e45f8d', N'viharshettygs@gmail.com', N'VIHARSHETTYGS@GMAIL.COM', N'viharshettygs@gmail.com', N'VIHARSHETTYGS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEM/2f4v7WfFzHcTS/I4oy5376BQPZdU5MDcMZ6bND1TcNF3Ptiza960nPmHicICxCA==', N'A42RY4LLFA4NU5REQ34ZN3EWMOWYTWPT', N'69b2ef85-f3e5-41be-b704-982bf5943ca2', N'9900868437', 0, 0, NULL, 1, 0, N'bengaluru', N'shashikala', N'560058', N'karnataka', N'laggere', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'ed9f6670-7f9b-4611-aaab-d67ebececa62', N'Rajeena@vrize.com', N'RAJEENA@VRIZE.COM', N'Rajeena@vrize.com', N'RAJEENA@VRIZE.COM', 0, N'AQAAAAEAACcQAAAAEKA3fiTuDZA0vjCaUroKrug4UuPUqlc5rx7q/mfA54vCMkAxI7FycPXXaADkpk1ESA==', N'UYSYCNVUFAAXFPGMDJ5VCT723IGUZ7LP', N'f6b11ccd-24f8-4bca-a4da-fbf4f309b87e', N'62626262626', 0, 0, NULL, 1, 4, N'Benglore', N'Rajeenaa', N'581402', N'Karnataka', N'Vijaynagar', N'ApplicationUser', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Name], [PostalCode], [State], [StreetAddress], [Discriminator], [CompanyId]) VALUES (N'f0c8f1c6-7e73-4bf7-a536-c976a2750320', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHrYmYUwacp+5TXv6i9UW1GhfcjNAi9irTT9OvxU+qASqnX5rXiyx/CkGcDzdHyUkA==', N'J5D2ZMFFLT7AJ57HYRHLY7NJS6CNK32G', N'f3e5b362-a439-4fa8-8029-aff68d70c6d1', NULL, 0, 0, NULL, 1, 0, NULL, N'VizKart Admin', NULL, NULL, NULL, N'ApplicationUser', NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Adventure')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Comics')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Mystery')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Poetry')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Non Fiction')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Children''s Book')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'AutoBiography')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CoverTypes] ON 

INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (1, N'SoftCover')
INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (2, N'HardCover')
SET IDENTITY_INSERT [dbo].[CoverTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (1, 1, 2, 1, 200)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (1, N'773b46fc-07f7-4c76-b03a-7c3cd7e99529', CAST(N'2021-11-08T13:05:12.2587050' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 200, NULL, NULL, N'Processing', N'Approved', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'9898989898', N'laggeri', N'canada', N'USA', N'789090', N'Vihara')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (2, N'The Alchemist', N'<p><em style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;"><strong>The Alchemist</strong></em><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;"> </span><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">is a&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Novel" href="https://en.wikipedia.org/wiki/Novel">novel</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;by Brazilian author&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Paulo Coelho" href="https://en.wikipedia.org/wiki/Paulo_Coelho">Paulo Coelho</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;that was first published in 1988. Originally written in&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Portuguese language" href="https://en.wikipedia.org/wiki/Portuguese_language">Portuguese</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">, it became a widely translated international bestseller.</span><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">An&nbsp;</span><a class="mw-redirect" style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Allegorical" href="https://en.wikipedia.org/wiki/Allegorical">allegorical</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;novel,&nbsp;</span><em style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">The Alchemist</em><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;follows a young&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Andalusia" href="https://en.wikipedia.org/wiki/Andalusia">Andalusian</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;shepherd in his journey to the&nbsp;</span><a class="mw-redirect" style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Pyramids of Egypt" href="https://en.wikipedia.org/wiki/Pyramids_of_Egypt">pyramids of Egypt</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">, after having a recurring dream of finding a treasure there.</span></p>', N'250217', N'Paulo Coelho', 300, 200, 170, 150, N'\images\products\f8709a76-73db-4ab3-b2ca-04629451d182.jpg', 1, 1, 8)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (3, N'Macbeth', N'<p><em style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;"><strong>The Tragedy of Macbeth</strong></em><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;is a&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Shakespearean tragedy" href="https://en.wikipedia.org/wiki/Shakespearean_tragedy">tragedy</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;by&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="William Shakespeare" href="https://en.wikipedia.org/wiki/William_Shakespeare">William Shakespeare. </a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">It is thought to have been first performed in </span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="1606 in literature" href="https://en.wikipedia.org/wiki/1606_in_literature">1606</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">.</span><sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: #202122; font-family: sans-serif; background-color: #ffffff;"></sup><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;It dramatises the damaging physical and psychological effects of political ambition on those who seek power for its own sake.</span></p>', N'2020', N'William Shakespeare', 2000, 500, 500, 400, N'\images\products\65f5385b-0e0d-49fc-96e3-ed676294c7d8.jpg', 3, 1, 5)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (4, N'Survival of the Sickest', N'<p><span style="color: #435059; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 20px;">The book explains eight different cases, each detailing an example of a disease that is considered an evolutionary adaptation to help populations survive disease. The cases reveal and explain in depth connections that you would not normally make about why certain diseases arose and are still prevalent.</span></p>', N'060889661', N'Dr. Sharon Moalem', 700, 200, 100, 50, N'\images\products\7a9e5337-2055-498d-832d-31e82b34aa7f.jpg', 5, 1, 4)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (5, N'The Jungle Book', N'<p><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">A major theme in the book is abandonment followed by fostering, as in the life of Mowgli, echoing Kipling''s own childhood. The theme is echoed in the triumph of protagonists including&nbsp;</span><a style="text-decoration-line: none; color: #0645ad; background: none #ffffff; font-family: sans-serif; font-size: 14px;" title="Rikki-Tikki-Tavi" href="https://en.wikipedia.org/wiki/Rikki-Tikki-Tavi">Rikki-Tikki-Tavi</a><span style="color: #202122; font-family: sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;and The White Seal over their enemies, as well as Mowgli''s. Another important theme is of law and freedom;</span></p>', N'35997', N'Rudyard Kipling', 2000, 1000, 700, 600, N'\images\products\da499775-9aad-45ad-8fec-7064416d0463.jpg', 6, 2, 5)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (6, N'Wings of Fire', N'<p><span style="color: #444444; font-family: Roboto, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;">Wings of Fire: An Autobiography of APJ Abdul Kalam (1999), former President of India. It was written by Dr. Abdul Kalam and Arun Tiwari. Dr. Kalam examines his early life, effort, hardship, fortitude, luck and chance that eventually led him to lead Indian space research</span></p>', N'12090', N'A P J Abdul Kalam', 2000, 1000, 800, 750, N'\images\products\8cce84ee-a28e-469a-9f38-fa8da6d724fb.jpg', 7, 2, 4)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (8, N'The Great Wall of China', N'<p><span style="color: #444444; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;">Describes literally During the construction of the Great Wall of China is a short story by Franz Kafka. While written in 1917, it was not published until 1930, seven years after his death.</span></p>', N'23456', N'Franz Kafka', 1000, 700, 650, 600, N'\images\products\39f24c2c-b787-4c1a-8e44-aaa2a0a173f3.jpg', 5, 1, 5)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (9, N'Daffodils', N'<p><span style="color: #181818; font-family: Merriweather, Georgia, serif; font-size: 14px; background-color: #ffffff;">Katy, a maidservant at Cheadle Manor, longs to escape her narrow life but events unfold slowly in her rural village. Jem Phipps has always loved Katy.&nbsp;</span></p>', N'29090', N'Alex Martin', 1000, 500, 400, 300, N'\images\products\e4e9681c-a08a-4e09-986b-3ec58adee57d.jpg', 4, 1, 10)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (10, N'The Mysterious Island', N'<p><span style="color: #666666; font-family: Roboto, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;">The Mysterious Island is an enduring adventure classic by the masterful Jules Verne.</span><span style="background-color: #ffffff; color: #666666; font-family: Roboto, Helvetica, sans-serif; font-size: 13px;">When the craft crash-lands, its passengers find themselves castaways on an exotic island. Here they are forced to contend with wild animals, pirates, and an active volcano&mdash;in a fight for their very survival. Beloved for well over a century.</span></p>', N'23424', N'Jules Verne', 1399, 599, 549, 400, N'\images\products\0e2f8517-c807-452a-a9ef-dd5e11da6751.jpg', 1, 2, 4)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (11, N'Journey to the Center of Earth', N'<p style="border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin: 0px; padding: 0px; -webkit-line-clamp: initial; line-height: 20px;"><span class="l_ecrd_txt_pln">Journey to the Center of the Earth, also translated with the variant titles A Journey to the Centre of the Earth and A Journey into the Interior of the Earth, is a classic science fiction novel</span></p>', N'22909', N'Jules Verne', 1500, 750, 700, 500, N'\images\products\8c2fdb55-aab7-41f4-97c6-9e598d151daf.jpg', 1, 2, 3)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (12, N'Ramayana', N'<div id="l_ecrd_blk_0_PlainHero" class="lite-entcard-blk" style="clear: both; position: relative; border-bottom: 1px solid #dddddd; color: #444444; font-family: Roboto, Helvetica, sans-serif; font-size: 13px; background-color: #ffffff;">
<div class="l_ecrd_imcolheader gradient simg" style="padding: 20px 20px 0px; position: relative;">
<div class="l_ecrd_imcolheader_desc" style="padding-bottom: 12px;">
<p style="border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin: 0px; padding: 0px; -webkit-line-clamp: initial; line-height: 20px;"><span class="l_ecrd_txt_pln">Rāmāyana is one of the two major Sanskrit epics of ancient India and important text of Hinduism, the other being the Mahābhārata. The epic, traditionally ascribed to the Maharishi Valmiki.</span></p>
</div>
</div>
</div>', N'19090', N'Valmiki', 2000, 1000, 950, 800, N'\images\products\3aafbb55-b04a-46a0-86d7-fb39931e67ee.jpg', 4, 1, 7)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId], [QuantityAvailable]) VALUES (13, N'xyz', N'<p>New Book</p>', N'111', N'nbznb', 1500, 1000, 900, 600, N'\images\products\fb3d2267-61fa-402e-962c-8aede58d29c0.jpg', 3, 1, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (7, N'a5eac8fb-bc25-4c8e-ba0e-bfa3df38797b', 2, 1)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (64, N'ab8bb9d1-e703-4cc0-844c-a44c4e294d25', 13, 1)
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_CompanyId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_CompanyId] ON [dbo].[AspNetUsers]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderHeaders_ApplicationUserId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderHeaders_ApplicationUserId] ON [dbo].[OrderHeaders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CoverTypeId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CoverTypeId] ON [dbo].[Products]
(
	[CoverTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ShoppingCarts_ApplicationUserId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ApplicationUserId] ON [dbo].[ShoppingCarts]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCarts_ProductId]    Script Date: 11/16/2021 9:28:45 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ProductId] ON [dbo].[ShoppingCarts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [QuantityAvailable]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Companies_CompanyId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_CoverTypes_CoverTypeId] FOREIGN KEY([CoverTypeId])
REFERENCES [dbo].[CoverTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_CoverTypes_CoverTypeId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Products_ProductId]
GO
/****** Object:  StoredProcedure [dbo].[GetbySearch]    Script Date: 11/16/2021 9:28:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetbySearch]
@search nvarchar(max)=null
AS 
BEGIN
SELECT *from Products P
left join [dbo].[Categories] C on p.Id=c.Id
where
P.Title LIKE CASE WHEN @search is not null then '%'+@search+'%' else P.Title end
OR
C.Name LIKE CASE WHEN @search is not null then '%'+@search+'%' else C.Name end
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CreateCoverType]    Script Date: 11/16/2021 9:28:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_CreateCoverType]
                                   @Name varchar(100)
                                   AS 
                                   BEGIN 
                                    INSERT INTO dbo.CoverTypes(Name)
                                    VALUES (@Name)
                                   END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCoverType]    Script Date: 11/16/2021 9:28:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_DeleteCoverType]
	                                @Id int
                                    AS 
                                    BEGIN 
                                     DELETE FROM dbo.CoverTypes
                                     WHERE  Id = @Id
                                    END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCoverType]    Script Date: 11/16/2021 9:28:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GetCoverType] 
                                    @Id int 
                                    AS 
                                    BEGIN 
                                     SELECT * FROM   dbo.CoverTypes  WHERE  (Id = @Id) 
                                    END 
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCoverTypes]    Script Date: 11/16/2021 9:28:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GetCoverTypes] 
                                    AS 
                                    BEGIN 
                                     SELECT * FROM   dbo.CoverTypes 
                                    END
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateCoverType]    Script Date: 11/16/2021 9:28:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UpdateCoverType]
	                                @Id int,
	                                @Name varchar(100)
                                    AS 
                                    BEGIN 
                                     UPDATE dbo.CoverTypes
                                     SET  Name = @Name
                                     WHERE  Id = @Id
                                    END
GO
USE [master]
GO
ALTER DATABASE [BulkyBook] SET  READ_WRITE 
GO
