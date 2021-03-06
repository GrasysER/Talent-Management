USE [master]
GO
/****** Object:  Database [RTMS]    Script Date: 10/12/2017 10:10:25 PM ******/
CREATE DATABASE [RTMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RTMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\RTMS.mdf' , SIZE = 5312KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RTMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\RTMS_log.ldf' , SIZE = 3904KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RTMS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RTMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RTMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RTMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RTMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RTMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RTMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [RTMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RTMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RTMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RTMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RTMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RTMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RTMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RTMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RTMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RTMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RTMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RTMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RTMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RTMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RTMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RTMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RTMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RTMS] SET RECOVERY FULL 
GO
ALTER DATABASE [RTMS] SET  MULTI_USER 
GO
ALTER DATABASE [RTMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RTMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RTMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RTMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RTMS] SET DELAYED_DURABILITY = DISABLED 
GO
USE [RTMS]
GO
/****** Object:  Schema [Class_def]    Script Date: 10/12/2017 10:10:25 PM ******/
CREATE SCHEMA [Class_def]
GO
/****** Object:  Schema [RTMS]    Script Date: 10/12/2017 10:10:25 PM ******/
CREATE SCHEMA [RTMS]
GO
/****** Object:  Table [Class_def].[active]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[active](
	[code] [varchar](10) NOT NULL CONSTRAINT [DF_active_code]  DEFAULT ('Yes'),
 CONSTRAINT [PK_active] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[bus_grp]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[bus_grp](
	[code] [varchar](64) NOT NULL,
 CONSTRAINT [PK_bus_grp] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[bus_unit]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[bus_unit](
	[code] [varchar](64) NOT NULL,
 CONSTRAINT [PK_bus_unit] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[competencies]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[competencies](
	[code] [varchar](64) NOT NULL,
 CONSTRAINT [PK_competencies] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[diversity]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[diversity](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_diversity] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[early_career_start]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[early_career_start](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_early_career_start] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[early_career_type]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[early_career_type](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_early_career_type] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[functional_lvl_npj]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[functional_lvl_npj](
	[code] [varchar](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[human_synergistics]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[human_synergistics](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_human_synergistics] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[mm_reason]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[mm_reason](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_mm_reason] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[p_rd_code]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[p_rd_code](
	[code] [char](32) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[padr_rating]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[padr_rating](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_padr_rating] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[rd_code]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[rd_code](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_rd_code] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[region]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[region](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[relo_code]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[relo_code](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_relo_code] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[relo_interest]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[relo_interest](
	[code] [varchar](64) NOT NULL,
 CONSTRAINT [PK_relo_interest] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[risk_lvl]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[risk_lvl](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_risk_lvl] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[stat]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[stat](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_stat] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[talent_code]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[talent_code](
	[code] [varchar](64) NOT NULL,
 CONSTRAINT [PK_talent_code] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[time_npj]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[time_npj](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_time_npj] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[time_nspj]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[time_nspj](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_time_nspj] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Class_def].[willing_to_relo]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Class_def].[willing_to_relo](
	[code] [varchar](32) NOT NULL,
 CONSTRAINT [PK_willing_to_relo] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/12/2017 10:10:25 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[EmployeeId] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Audit]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Audit](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Audit_Id]  DEFAULT (newid()),
	[Type] [char](1) NULL,
	[TableName] [varchar](128) NULL,
	[PK] [varchar](1000) NULL,
	[FieldName] [varchar](128) NULL,
	[OldValue] [varchar](1000) NULL,
	[NewValue] [varchar](1000) NULL,
	[UpdateDate] [datetime] NULL,
	[UserName] [varchar](128) NULL,
 CONSTRAINT [PK_dbo.PK_Audit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Audit2]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Audit2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [char](1) NULL,
	[TableName] [varchar](128) NULL,
	[PK] [varchar](1000) NULL,
	[FieldName] [varchar](128) NULL,
	[OldValue] [varchar](1000) NULL,
	[NewValue] [varchar](1000) NULL,
	[UpdateDate] [datetime] NULL,
	[UserName] [varchar](128) NULL,
	[ChangedBy] [varchar](128) NULL,
 CONSTRAINT [PK_dbo.PK_Audit2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employees]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employees](
	[uid] [varchar](32) NOT NULL,
	[email] [varchar](128) NULL,
	[last_name] [varchar](32) NOT NULL,
	[first_name] [varchar](32) NOT NULL,
	[talent_code] [varchar](64) NOT NULL,
	[position_title] [varchar](64) NOT NULL,
	[competencies] [varchar](32) NULL,
	[cur_job_start_date] [date] NOT NULL,
	[bus_group] [varchar](64) NOT NULL,
	[hr_uid] [varchar](32) NOT NULL,
	[bus_unit] [varchar](64) NOT NULL,
	[manager_name] [varchar](64) NULL,
	[next_poten_job] [varchar](64) NULL,
	[functional_lvl_npj] [varchar](32) NULL,
	[time_next_poten_job] [varchar](32) NULL,
	[next_succ_poten_job] [varchar](32) NULL,
	[time_next_succ_poten_job] [varchar](32) NULL,
	[rd_code] [varchar](32) NULL,
	[p_rd_code] [varchar](32) NULL,
	[willing_to_relo] [varchar](32) NULL,
	[padr_rating] [varchar](32) NULL,
	[diversity_code] [varchar](32) NOT NULL,
	[passport] [varchar](32) NULL,
	[country] [varchar](32) NULL,
	[relo_code] [varchar](32) NULL,
	[must_move] [varchar](32) NULL,
	[mm_reason] [varchar](32) NULL,
	[mm_desc] [varchar](128) NULL,
	[mm_recom_action] [varchar](128) NULL,
	[flight_risk] [varchar](32) NULL,
	[fr_risk_lvl] [varchar](32) NULL,
	[fr_reason] [varchar](64) NULL,
	[fr_actions] [varchar](64) NULL,
	[vp_potential] [varchar](32) NULL,
	[vp_reason] [varchar](64) NULL,
	[vp_next_step] [varchar](64) NULL,
	[fy16_new_talent] [varchar](32) NULL,
	[m_init] [varchar](1) NULL,
	[company_start_date] [date] NULL,
	[former_ra_intern_coop] [varchar](10) NULL,
	[ra_ldp_grad] [varchar](10) NULL,
	[product_focus] [varchar](32) NULL,
	[suitability_ldshp_potential] [varchar](32) NULL,
	[next_dev_steps] [varchar](32) NULL,
	[ra_start_date] [date] NULL,
	[early_career_start] [varchar](32) NULL,
	[early_career_type] [varchar](32) NULL,
	[human_synergistics] [varchar](32) NULL,
	[human_synergistics_year] [varchar](32) NULL,
	[active] [varchar](3) NULL DEFAULT ('yes'),
	[photo_url] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[employees] ADD [changed_by] [varchar](32) NULL
 CONSTRAINT [PK__employees_finn] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employees_bp]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employees_bp](
	[uid] [char](32) NOT NULL,
	[email] [char](128) NOT NULL,
	[last_name] [char](32) NOT NULL,
	[first_name] [char](32) NOT NULL,
	[talent_code] [char](128) NOT NULL,
	[position_title] [char](64) NOT NULL,
	[competencies] [char](128) NOT NULL,
	[cj_start_date] [date] NOT NULL,
	[bus_grp] [char](128) NOT NULL,
	[bus_unit] [char](128) NULL,
	[mgr_name] [char](64) NOT NULL,
	[hr_uid] [char](32) NOT NULL,
	[npj] [char](64) NULL,
	[functional_lvl_npj] [char](32) NULL,
	[time_npj] [char](32) NULL,
	[nspj] [char](32) NULL,
	[time_nspj] [char](32) NULL,
	[diversity_code] [char](32) NULL,
	[passport] [char](32) NOT NULL,
	[country] [char](32) NOT NULL,
	[must_move] [char](3) NULL,
	[mm_desc] [char](128) NULL,
	[mm_recom_action] [char](128) NULL,
	[flight_risk] [char](32) NULL,
	[fr_risk_lvl] [char](32) NULL,
	[fr_reason] [char](128) NULL,
	[fr_actions] [char](128) NULL,
	[vp_potential] [char](32) NULL,
	[vp_reason] [char](128) NULL,
	[vp_next_step] [char](128) NULL,
	[fy16_new_talent] [char](32) NULL,
	[region] [char](32) NULL,
	[relo_code] [char](32) NULL,
	[p_rd_code] [char](32) NULL,
	[rd_code] [char](32) NULL,
	[willing_to_relo] [char](32) NULL,
	[relo_interest] [char](128) NULL,
	[mm_reason] [char](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[history]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[history](
	[uid] [varchar](32) NOT NULL,
	[email] [varchar](128) NULL,
	[last_name] [varchar](32) NOT NULL,
	[first_name] [varchar](32) NOT NULL,
	[talent_code] [varchar](64) NOT NULL,
	[position_title] [varchar](64) NOT NULL,
	[competencies] [varchar](32) NULL,
	[cur_job_start_date] [date] NOT NULL,
	[bus_group] [varchar](64) NOT NULL,
	[hr_uid] [varchar](32) NOT NULL,
	[bus_unit] [varchar](64) NOT NULL,
	[manager_name] [varchar](64) NULL,
	[next_poten_job] [varchar](64) NULL,
	[functional_lvl_npj] [varchar](32) NULL,
	[time_next_poten_job] [varchar](32) NULL,
	[next_succ_poten_job] [varchar](32) NULL,
	[time_next_succ_poten_job] [varchar](32) NULL,
	[rd_code] [varchar](32) NULL,
	[p_rd_code] [varchar](32) NULL,
	[willing_to_relo] [varchar](32) NULL,
	[padr_rating] [varchar](32) NULL,
	[diversity_code] [varchar](32) NOT NULL,
	[passport] [varchar](32) NULL,
	[country] [varchar](32) NULL,
	[relo_code] [varchar](32) NULL,
	[must_move] [varchar](32) NULL,
	[mm_reason] [varchar](32) NULL,
	[mm_desc] [varchar](128) NULL,
	[mm_recom_action] [varchar](128) NULL,
	[flight_risk] [varchar](32) NULL,
	[fr_risk_lvl] [varchar](32) NULL,
	[fr_reason] [varchar](64) NULL,
	[fr_actions] [varchar](64) NULL,
	[vp_potential] [varchar](32) NULL,
	[vp_reason] [varchar](64) NULL,
	[vp_next_step] [varchar](64) NULL,
	[fy16_new_talent] [varchar](32) NULL,
	[m_init] [varchar](1) NULL,
	[company_start_date] [date] NULL,
	[former_ra_intern_coop] [varchar](10) NULL,
	[ra_ldp_grad] [varchar](10) NULL,
	[product_focus] [nvarchar](max) NULL,
	[suitability_ldshp_potential] [nvarchar](max) NULL,
	[next_dev_steps] [nvarchar](max) NULL,
	[ra_start_date] [date] NULL,
	[early_career_start] [nvarchar](max) NULL,
	[early_career_type] [nvarchar](max) NULL,
	[human_synergistics] [nvarchar](max) NULL,
	[human_synergistics_year] [nvarchar](4) NULL,
	[term] [varchar](32) NOT NULL,
	[status] [varchar](32) NULL,
	[removal_reason] [varchar](max) NULL,
	[removal_comments] [varchar](max) NULL,
	[photo_url] [varchar](max) NULL,
 CONSTRAINT [pk_history] PRIMARY KEY CLUSTERED 
(
	[term] ASC,
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_log]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_log](
	[t_stamp] [timestamp] NOT NULL,
	[hr_uid] [char](32) NULL,
	[uid] [char](32) NULL,
	[attribute] [char](32) NULL,
	[o_value] [char](128) NULL,
	[n_value] [char](128) NULL,
	[term] [char](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[t_stamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[employees_view]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[employees_view]
AS
SELECT *
FROM employees;
GO
/****** Object:  View [dbo].[read_only_emp]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[read_only_emp]
AS
SELECT *
FROM employees
WITH CHECK OPTION;
GO
/****** Object:  View [dbo].[users_view]    Script Date: 10/12/2017 10:10:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[users_view]
AS
SELECT *
FROM users
GO
INSERT [Class_def].[active] ([code]) VALUES (N'No')
INSERT [Class_def].[active] ([code]) VALUES (N'Yes')
INSERT [Class_def].[bus_grp] ([code]) VALUES (N'ARCHITECTURE & SOFTWARE                                         ')
INSERT [Class_def].[bus_grp] ([code]) VALUES (N'CONTROL PRODUCT & SOLUTIONS                                     ')
INSERT [Class_def].[bus_grp] ([code]) VALUES (N'GLOBAL SALES & MARKETING                                        ')
INSERT [Class_def].[bus_grp] ([code]) VALUES (N'HEADQUARTERS                                                    ')
INSERT [Class_def].[bus_grp] ([code]) VALUES (N'NOT LISTED                                                      ')
INSERT [Class_def].[bus_grp] ([code]) VALUES (N'OPERATIONS & ENGINEERING SERVICES                               ')
INSERT [Class_def].[bus_grp] ([code]) VALUES (N'option')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'                                                                ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'AS - ASIA PAC BUS CENTER                                        ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'AS - CONTROL & VIS BUS ENGRG                                    ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'AS - CONTROL & VIS BUS PROD MGMT                                ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'AS - CONTROL AND VISUALIZATION BUS                              ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'AS - HQTRS                                                      ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'AS - INFORMATION SOFTWARE & PROCESS BUS                         ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'AS - MOTION CONTROL                                             ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'AS - SAFETY, SENSING & CONN                                     ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'CPS - CUSTOMER SUPPORT & MAINT                                  ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'CPS - HQTRS                                                     ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'CPS - INDUSTRIAL COMPONENTS                                     ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'CPS - POWER CONTROL BUSINESS                                    ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'CPS - SYSTEM & SOLUTIONS BUSINESS                               ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - AP CHANNEL SALES                                          ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - AP PROCESS SALES                                          ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - ASIA PACIFIC SALES                                        ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - CHANNEL SALES                                             ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - COMMERCIAL MARKETING                                      ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - CUSTOMER CARE                                             ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - EMEA INDUSTRIES                                           ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - EMEA PRODUCT BUSINESS                                     ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - EMEA SALES                                                ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - GLOBAL PRICING                                            ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - HQTRS                                                     ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - LATIN AMER SALES                                          ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - OEM SALES                                                 ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - SALES OPERATIONS                                          ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'GSM - VERTICALS                                                 ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'HQTRS - EXECUTIVES                                              ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'HQTRS - FINANCE                                                 ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'HQTRS - FINANCE SHARED SERVICES                                 ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'HQTRS - HUMAN RESOURCES                                         ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'HQTRS - INFO TECHNOLOGY                                         ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'HQTRS - OFFICE OF THE GENERAL COUNSEL                           ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'HQTRS - STRATEGIC DEVELOPMENT                                   ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'NOT LISTED                                                      ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - APBC OES FUNCTIONS                                        ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - APBC OES MFG                                              ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - ENGRG SVCS                                                ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - GLOBAL WORKPLACE SVCS                                     ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - HQTRS                                                     ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - LOGISTICS                                                 ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - LOGISTICS CHAMPAIGN                                       ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MATERIALS                                                 ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG AARAU                                                 ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG CAMBRIDGE                                             ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG DOMINICAN REP                                         ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG JUNIAI BRL                                            ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG KATOWICE                                              ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG LADYSMITH                                             ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG LAPA BRL                                              ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG MEQUON                                                ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG MIDDLETON                                             ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG MONTERREY                                             ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG QUALITY                                               ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG RICHLAND CTR                                          ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG SHANGHAI JQD                                          ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG SHANGHAI JQS                                          ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG STRATEGY                                              ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG TECATE                                                ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG TWINSBURG                                             ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - MFG WUPERTAL                                              ')
INSERT [Class_def].[bus_unit] ([code]) VALUES (N'OES - SSO & PURCHASING                                          ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Acts Courageously                                               ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Adds Value for Customers and Partners                           ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Attains Results                                                 ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Builds Global Bus & Inclusive Culture                           ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Collaborates & Teams Effectively                                ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Contributes Prof & Technical Expertise                          ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Creates Focus & Motivates Others                                ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Demonstrates Bus & Financial Acumen                             ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Develops People & Teams                                         ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Drives Growth                                                   ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Fosters Innovation                                              ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Leads Change                                                    ')
INSERT [Class_def].[competencies] ([code]) VALUES (N'Thinks & Acts Strategically                                     ')
INSERT [Class_def].[diversity] ([code]) VALUES (N'F                               ')
INSERT [Class_def].[diversity] ([code]) VALUES (N'FM                              ')
INSERT [Class_def].[diversity] ([code]) VALUES (N'M                               ')
INSERT [Class_def].[diversity] ([code]) VALUES (N'NOT DIV                         ')
INSERT [Class_def].[early_career_start] ([code]) VALUES (N'No')
INSERT [Class_def].[early_career_start] ([code]) VALUES (N'Yes')
INSERT [Class_def].[early_career_type] ([code]) VALUES (N'EIT')
INSERT [Class_def].[early_career_type] ([code]) VALUES (N'Intern or Co-op')
INSERT [Class_def].[early_career_type] ([code]) VALUES (N'LDP')
INSERT [Class_def].[early_career_type] ([code]) VALUES (N'Sales Training')
INSERT [Class_def].[functional_lvl_npj] ([code]) VALUES (N'Dir')
INSERT [Class_def].[functional_lvl_npj] ([code]) VALUES (N'IC')
INSERT [Class_def].[functional_lvl_npj] ([code]) VALUES (N'Mgr')
INSERT [Class_def].[functional_lvl_npj] ([code]) VALUES (N'SVP')
INSERT [Class_def].[functional_lvl_npj] ([code]) VALUES (N'VP')
INSERT [Class_def].[human_synergistics] ([code]) VALUES (N'Add to schedule')
INSERT [Class_def].[human_synergistics] ([code]) VALUES (N'Completed')
INSERT [Class_def].[human_synergistics] ([code]) VALUES (N'Scheduled')
INSERT [Class_def].[mm_reason] ([code]) VALUES (N'                                ')
INSERT [Class_def].[mm_reason] ([code]) VALUES (N'Other (explain)                 ')
INSERT [Class_def].[mm_reason] ([code]) VALUES (N'Performence Concern             ')
INSERT [Class_def].[mm_reason] ([code]) VALUES (N'Reached Top Potential           ')
INSERT [Class_def].[mm_reason] ([code]) VALUES (N'Term-Involuntary                ')
INSERT [Class_def].[mm_reason] ([code]) VALUES (N'Term-Retirement                 ')
INSERT [Class_def].[mm_reason] ([code]) VALUES (N'Term-Voluntary                  ')
INSERT [Class_def].[p_rd_code] ([code]) VALUES (N'R0                              ')
INSERT [Class_def].[p_rd_code] ([code]) VALUES (N'R1                              ')
INSERT [Class_def].[p_rd_code] ([code]) VALUES (N'R2                              ')
INSERT [Class_def].[p_rd_code] ([code]) VALUES (N'R3+                             ')
INSERT [Class_def].[padr_rating] ([code]) VALUES (N'Achievement                     ')
INSERT [Class_def].[padr_rating] ([code]) VALUES (N'Highest Achievement             ')
INSERT [Class_def].[padr_rating] ([code]) VALUES (N'Needs Improment                 ')
INSERT [Class_def].[padr_rating] ([code]) VALUES (N'Too New To Rate                 ')
INSERT [Class_def].[rd_code] ([code]) VALUES (N'R0                              ')
INSERT [Class_def].[rd_code] ([code]) VALUES (N'R2                              ')
INSERT [Class_def].[rd_code] ([code]) VALUES (N'R3+                             ')
INSERT [Class_def].[region] ([code]) VALUES (N'AP                              ')
INSERT [Class_def].[region] ([code]) VALUES (N'CAN                             ')
INSERT [Class_def].[region] ([code]) VALUES (N'EMEA                            ')
INSERT [Class_def].[region] ([code]) VALUES (N'LA                              ')
INSERT [Class_def].[region] ([code]) VALUES (N'US                              ')
INSERT [Class_def].[relo_code] ([code]) VALUES (N'D                               ')
INSERT [Class_def].[relo_code] ([code]) VALUES (N'D I                             ')
INSERT [Class_def].[relo_code] ([code]) VALUES (N'D I STI                         ')
INSERT [Class_def].[relo_code] ([code]) VALUES (N'D STI                           ')
INSERT [Class_def].[relo_code] ([code]) VALUES (N'I                               ')
INSERT [Class_def].[relo_code] ([code]) VALUES (N'I STI                           ')
INSERT [Class_def].[relo_code] ([code]) VALUES (N'STI                             ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific                                                    ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Canada                                           ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Canada | EMEA                                    ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Canada | EMEA | Latin America                    ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Canada | EMEA | Latin America | United States    ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Canada | EMEA | United States                    ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Canada | Latin America                           ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Canada | Latin America | United States           ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Canada | United States                           ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | EMEA                                             ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | EMEA | Latin America                             ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | EMEA | Latin America | United States             ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | EMEA | United States                             ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Latin America                                    ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | Latin America | United States                    ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Asia Pacific | United States                                    ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Canada                                                          ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Canada | EMEA                                                   ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Canada | EMEA | Latin America                                   ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Canada | EMEA | Latin America | United States                   ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Canada | EMEA | United States                                   ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Canada | Latin America                                          ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Canada | United States                                          ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Canda | Latin America | United States                           ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'EMEA                                                            ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'EMEA | Latin America                                            ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'EMEA | Latin America | United States                            ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'EMEA | United States                                            ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Latin America                                                   ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'Latin America | United States                                   ')
INSERT [Class_def].[relo_interest] ([code]) VALUES (N'United States                                                   ')
INSERT [Class_def].[risk_lvl] ([code]) VALUES (N'High                            ')
INSERT [Class_def].[risk_lvl] ([code]) VALUES (N'Medium                          ')
INSERT [Class_def].[stat] ([code]) VALUES (N'Removed from Pool               ')
INSERT [Class_def].[stat] ([code]) VALUES (N'Termed                          ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'Bleacher Spotlight (AS Only)                                    ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'ECHPL                                                           ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'ECHPL -BU                                                       ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'HPL                                                             ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'HPL -BU                                                         ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'Regional Direct Report (GSM Only)                               ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'Sucession (non-key talent)                                      ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'Suitability Only                                                ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'SVP Direct Report                                               ')
INSERT [Class_def].[talent_code] ([code]) VALUES (N'TO BE VERIFIED                                                  ')
INSERT [Class_def].[willing_to_relo] ([code]) VALUES (N'No                              ')
INSERT [Class_def].[willing_to_relo] ([code]) VALUES (N'Yes                             ')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201704032130528_InitialCreate', N'Security_Practice.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C4E8DE85B76D6F8C8C2F98F62CF266B025769B1889D24A94D746B05FB60FF9A4FC428ABAB578D3A55B7DF16281C5B4543C552C1E92C552D1FFFBFDBFE31F5E03DF7AC17142423AB14F46C7B685A91B7A842E2776CA16DF7DB27FF8FECF7F1A5F79C1ABF5732977C6E5A0254D26F63363D1B9E324EE330E50320A881B8749B86023370C1CE485CEE9F1F13F9C93130703840D589635FE925246029CFD809FD390BA386229F26F430FFB49F11CDECC3254EB0E053889908B27F60CBB694CD8DBD3438C5C465C3CCADBD8D6854F50C205FC856D214A438618587BFE35C133168774398BE001F21FDF220C720BE427B8E8C5F94ABC6B878E4F79879C55C312CA4D1316063D014FCE0A0F3972F3B5FC6C571E041F5E81AFD91BEF75E6C7897DE3E1ECD197D00707C80ACFA77ECC8527F66DA5E22289EE301B950D4739E4750C70BF86F1B7511DF1C8EADCEEA862D4E9E898FF77644D539FA5319E509CB218F947D6433AF789FB2FFCF6187EC3747276325F9C7DFAF01179671FFF8ECF3ED47B0A7D0539E1013C7A88C308C7601B5E54FDB72D476CE7C80DAB66B536B957804B30396CEB16BD7EC674C99E61DA9C7EB2AD6BF28ABDF24941AEAF94C05C82462C4EE1E75DEAFB68EEE3EABDD3A893FFBF41EBE9878F8368BD432F64990DBDA41F264E0CF3EA0BF6B3B7C93389F2E9258CF75321761D8701FF2DF22B7FFB340BD3D8E59D098D228F285E62265A377656E4ED44690E353CAD4BD4C3A736B754A5B7569477689D9950AAD8F56C28EDDDAEDECE8CBB882218BC8C5ADC234D84336D592309E3C82A25AD527245A393AE34A2D0BD3FF2AA7815447EF8869BB900FFECA4BB4D1522FE002B70072D10022D481CE0AA533F86C077447BBBE70125092C40DE3F51F2BC7507957C9D3114445BD7F6F01C527C9706733EDD76A76BB0A179FC35BC86691DC65794B7DA18EF73E87E0B537645BD4BC4F057E69680FCE72309BA030C62CE85EBE224B90632636F1A42845F02DE507676DA1B8EAF88FB8E80A63E22813E0492D6EEA752741506E9259450C820A60B879A4CFD1C2E09ED666A296A3635976835B510EB6B2A07EB6669216936341368B533971A2CC0CC4668F80833833DFC1073B338C1B416D4DC38831512FF84298E6119F31E106338A6AB11E8B26EEC232EC9868F2BDDFADE9469FA19F9E9D0AAD69A0DD92230FC6CC8600F7F366466C2E317E2F1A8A4C3B9AB1406F84EF2FA235DFB9C932CDBF57410BAB96BE5BB59034CD3E52249429764B34093712BF225A2FD10C359EDC993E234292560A0634074C2B73C78027DB36552DDD34BEC6386AD0B37CF484E51E2224F752374C8EB6158B9A36A0C5B256244E3FEA6E804A6E3983742FC1094C04C2594A9D382509744C86FF592D4B2E316C6FB5EE990DF5CE20853AEB0D5135D94EBF32EDC804A8F34286D1E1A3B35C63513D110B59AC6BC2D845D8DBB920ED909275B6267032F8BF86D2BC46CF6D80EC8D9EC922E06187388FB20687156E94A00F9E0726804954E4C06821621D54E082A7A6C0F04155DF2EE089A1F51BB8EBF745E3D347A8A07E5DD6FEB8DEEDA0337057F1C1835F3D813DA30688163959E9773FE12BF32CDE10CEC2CCE674911EACA14E1E033CCC494CD2ADED5C6A14E33884CA226C015D15A408BAF8F0A9032A17A1857E6F21AAD2BA2881EB065DEAD11B658FB25D81A0754ECFA57D89AA0F95BAD4CCE4EA78FAA67151B1492773A2CD470348490172FB1E31D9C62CACBAA8EE9120BF789866B1D2B06A3C1412D91ABC149656706F75249CD762FE902B23E21D9465E92C2278397CACE0CEEA582A3ED4ED204053DC2828D5C246EE1034DB632D351ED36D5BBB1939768150FC68EA1966B7C8BA288D065ADB6AB7862CDF2C2AEE977B3FEB54E418EE1B889A6E4A9B2B6D2C4C2182DB1F4165483A5D7244ED82562688E789E67EA058A98766F352CFFA5CAFAF6A90E62B90F94D2FCDFE29755A56640D871D590A440BA867E063CAEC992E91A16E89B5BBCE20EF928D6E4EFA7A19F06D41C66995BE75FF1EAEDF3272AC2D891EC57C228C5674AB02B0E40A7E151A7C6A04355C532EB0F9719C2E4F43212ADBBDD149D9A51CA64551DC594C0DADBF099829A35864C8E1AFB8F582BC276E658BD2AA68E527FDE072D2B7C1181B2473D316AB5130A58ED5D7754B1BCA58E29BEE98E28D5B0D421A5573DACAC57AA0846D65FAC8567F0A85EA2BB06B536A58EAEBEED8EACA952A9436B5EAF81ADB1597ED71D5553C85207D6BCEE8EBDAA6A9117E603DE138D27A30D37C5FC08BDD9AE68C0D8CE2A3BCCA65AAB14A803D51EF7C42A6A0114B0E2F94172CA788EDC905379FE64334E1930CCAB90F0A55D5C841ACB03CC98C2E77361A16F2A1F30E3F563EE56F9A11C2665914A7B75A8940E8FE3E220D77E5B4839D9E522B655BA1158F596301C8CB8C068F68B3FF509E64B7A29708B2859E084E52523F6E9F1C9A974D5E870AEFD3849E2F99A83B0E9EE8F38663BA8FEA22F28769F51ACD6626C70356605AAA4B96FA8875F27F67FB256E759C684FF2B7B7C64DD245F29F92585178F718AADDFD4DAD261AE0A341FE20EF4624777AFDEFCFB296F7A64DDC73063CEAD63C997EB8CB078DDA3973579D30DAC59FB12C8FB9D50EAAD8A12FA2F017AFD6B1DAFF7CD09AD91D2FC5AFFA2C49CB0412E496CD45FED45888D1035971D86C21BC485A6CB0CEB60192F3278F093651719FA75567FB1611DD38C971A08ED0F265F69E8BEAA952DF7B873690E5ABB58E1323FB796846F541FBAEFAD4EA91CDF68A2ABD5E13DE036A8005F8319EFAC787AB0CD56531B3D18F63EA9BDF582E843A9815E55A7ECB7F47997D5CE0D5FB1FE5045CE075096A72933DA7F29F3AEB9664A0E1F783D68BF82E503235B517CB6FFB2E45D93CD94353E70B2F52A3E3E30AEED6BFFDC33D33A6FA17B2F2556ABA20C1F7974A9E5B652E13C0F0F27FC790824C823CAFC86A7BE36ADA9AEB645E14AC4ACD45C14272B56268EA257916856DBAFAFC586DFD8D942A659ADA194B44977B1FE37EA2E649A751B0A34F751E4AC2D91D4159EB7AC634D355BEFA9A859E8494B0D7D5BCCDAF8C5FE3DD5300FE21461F6183E39BF9F92E5415C32E4D4E951A2AC7E3D86BDB3F6172961FF4EC87205C1FF3E25C5AEB06B5632377411969BB76451292265686E31431E6CA91731230BE43278CD73CCD915F52C6FC7BF74CCB17743EF5316A50CBA8C83B92F24BC7810D0A43FABC3166D1EDF47D95F5B19A20B6026E1B9F97BFA634A7CAFB2FB5A93133240F0E8A2C8E8F2B1643CB3BB7CAB90EE42DA11A8705F15143DE220F2012CB9A733F482D7B10DE8F7192F91FBB6CA009A40DA074274FBF892A0658C82A4C058B5879FC0612F78FDFEFF8EB40C0598550000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'Read')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Read/Write')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'35bda28d-a8d4-4a70-a9e4-8c252ff17d53', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4815e6e9-7110-4c2e-bfcd-365fa6b66291', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f58dcd67-ee3d-4118-87b5-7bdd451ede21', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f9c51c96-e3e7-48af-8032-931ec5189666', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4b18f796-5529-44a4-a037-ce07e8cbf9e3', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b4f5d3c1-d59e-4ddd-bd36-829a20acde26', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd016a431-0674-4a9e-bda3-5ad06d9de295', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c7aeba0-f0d9-44bb-8fce-69bc8c1ed42f', N'3')
INSERT [dbo].[AspNetUsers] ([Id], [EmployeeId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'35bda28d-a8d4-4a70-a9e4-8c252ff17d53', N'2581034', N'corinne.dmitruk@gmail.com', 0, N'ANWpEPbjJvDxd/7uD/f/3vNZB3eDOxRRTbNiLmEw8rwNWcCwyt+wQZSZpaM0OhfWWg==', N'e6e5d77e-d719-4547-92da-a284e82cd1c8', NULL, 0, 0, NULL, 0, 0, N'corinne.dmitruk@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [EmployeeId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3c7aeba0-f0d9-44bb-8fce-69bc8c1ed42f', NULL, N'nonAdmin@nonAdmin.com', 0, N'AMdddR4AQgsHMMb/5o5ZxvdpU8Vy+Y/+/NUphQMFh/MYNK79Iumhrh619VRF5rDNiw==', N'5dcf4607-105c-488e-a954-1d9577019a4b', NULL, 0, 0, NULL, 1, 0, N'nonAdmin@nonAdmin.com')
INSERT [dbo].[AspNetUsers] ([Id], [EmployeeId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4815e6e9-7110-4c2e-bfcd-365fa6b66291', NULL, N'mow@ugh.com', 0, N'AHd3haiwoaHuLzgVNkc1JuSi/6gn8+LAP4Eok0GaZBaMH38cnuqWgiR6xSPR0xSrHw==', N'05c85bf0-ee74-4503-ad04-d784381cd36b', NULL, 0, 0, NULL, 1, 0, N'mow@ugh.com')
INSERT [dbo].[AspNetUsers] ([Id], [EmployeeId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4b18f796-5529-44a4-a037-ce07e8cbf9e3', NULL, N'test@test.com', 0, N'ALtPMnVlMAQoaEJmd6KeldRh3oTChOPwGQp7u1OIL7+HnPUISiaUAVXjCq+J8vJe6A==', N'af1afe03-13db-4d2d-ace7-bc74692e6e0b', NULL, 0, 0, NULL, 1, 0, N'test@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [EmployeeId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b4f5d3c1-d59e-4ddd-bd36-829a20acde26', NULL, N'newUser@newuser.com', 0, N'AEfwK7qbl7gQzvebHhXdYTqhvnrgWafVSYQG+R9x9CrzxayilkfPKHBnGINgr0NUTQ==', N'9d71873b-65a5-4c1a-aa27-e79bab1ce9be', NULL, 0, 0, NULL, 1, 0, N'newUser@newuser.com')
INSERT [dbo].[AspNetUsers] ([Id], [EmployeeId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd016a431-0674-4a9e-bda3-5ad06d9de295', NULL, N'email@email.com', 0, N'AMfDhmakq6l2hYZy+xbXKCpwrU0JtBfUKEqxfPyayPjoORaHPjsp5QrQAl3+pVdUqw==', N'7a01eb23-4dfa-4eb4-9b69-f562fb39039a', NULL, 0, 0, NULL, 1, 0, N'email@email.com')
INSERT [dbo].[AspNetUsers] ([Id], [EmployeeId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f58dcd67-ee3d-4118-87b5-7bdd451ede21', NULL, N'testest@test.com', 0, N'ALaVzDiHIDQYDtRitSAxuBIwllKz97XRnUilh62KJredmsXIHmGg9n7xF1rRZBFOjg==', N'6a7eec06-6a78-4e31-b3d1-e30faf6fd723', NULL, 0, 0, NULL, 1, 0, N'testest@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [EmployeeId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f9c51c96-e3e7-48af-8032-931ec5189666', NULL, N'TeamAdmin@admin.com', 0, N'ACTP1cGOU4SARZzBWmu15jS5uidFULDfbmsnSU8Wxv18NkOnQLvauVMk+LqfXqk1TQ==', N'e6ef6657-2f1f-48b6-bd00-c4f6ea51372f', NULL, 0, 0, NULL, 1, 0, N'TeamAdmin@admin.com')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'71af445d-732d-4ebd-838d-01d301e67c38', N'U', N'employees', N'<uid=12345687>', N'vp_reason', N'- Broad technical experience bas', N'- Broad technical experience base and leadership skills
- Demons', CAST(N'2017-04-14 13:39:59.183' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'16a00a8e-8786-4211-adda-0531baf9ea9b', N'U', N'employees', N'<uid=12345690>', N'vp_next_step', N'- Assume full responsibility for', N'- Assume full responsibility for the management of her assigned ', CAST(N'2017-04-14 13:40:06.787' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'429481be-f97f-45ae-934b-0a8c49c05d7e', N'U', N'employees', N'<uid=12345693>', N'former_ra_intern_coop', N'Yes', N'- Lead a t', CAST(N'2017-04-14 13:40:24.687' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'ee88e871-2ba4-48a9-89a7-0de1a8bed059', N'U', N'employees', N'<uid=12345680>', N'time_next_succ_poten_job', N'2Q16', N'3Q19+', CAST(N'2017-04-14 13:38:47.823' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'2aa90182-d45b-4d35-bad3-1135cae9b33e', N'U', N'employees', N'<uid=12345686>', N'next_poten_job', N'Manager, Product Management (exp', N'Manager, Product Management (expanded role)', CAST(N'2017-04-14 13:39:23.120' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'f593e0f1-e06d-49b6-a971-11fcf442bc42', N'U', N'employees', N'<uid=12345687>', N'vp_next_step', N'- Broaden technical skills
- Fol', N'- Broaden technical skills
- Follow through on development oppor', CAST(N'2017-04-14 13:39:59.183' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'704b58db-fa39-46f5-bac2-16522b715090', N'U', N'employees', N'<uid=12345678>', N'time_next_succ_poten_job', N'3Q18+', N'4Q18', CAST(N'2017-04-14 12:48:21.237' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'c820c2d0-70a1-4e3f-9cd9-179a235340c7', N'U', N'employees', N'<uid=12345682>', N'fr_reason', N'Apple is highly technical and be', N'Apple is highly technical and being actively pursued by high-tec', CAST(N'2017-04-14 13:39:06.537' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'7745cf9b-4e44-4fcc-b14e-1bd6f42aa246', N'U', N'employees', N'<uid=12345688>', N'time_next_succ_poten_job', N'3Q17+', N'3Q19+', CAST(N'2017-04-14 13:40:02.457' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'361ceb68-abb7-48fa-b8c8-1c766d1b4319', N'U', N'employees', N'<uid=12345687>', N'next_poten_job', N'DIRECTOR, ENGINEERING (SW, HW OR', N'DIRECTOR, ENGINEERING (SW, HW OR TEST)', CAST(N'2017-04-14 13:39:59.183' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'c91f1ce7-ea00-4b01-89ed-1d1f4333595b', N'U', N'employees', N'<uid=12345681>', N'manager_name', NULL, N'Joy, Almond', CAST(N'2017-04-14 13:38:58.450' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'517b7a47-fe18-46fe-8cb5-22b7e9f5cc46', N'U', N'employees', N'<uid=12345692>', N'next_poten_job', N'SENIOR BUSINESS MANAGER OR REGIO', N'SENIOR BUSINESS MANAGER OR REGIONAL MARKETING MANAGER', CAST(N'2017-04-14 13:40:22.760' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'a10d598a-3d2e-4c9d-b52d-25ca3fe35add', N'U', N'employees', N'<uid=12345685>', N'diversity_code', N'NOT', N'NOT DIV', CAST(N'2017-04-14 13:39:17.857' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'5bf52d29-025f-41e5-9050-354a135bf562', N'U', N'employees', N'<uid=12345681>', N'former_ra_intern_coop', N'Yes', N'', CAST(N'2017-04-14 13:38:58.450' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'b00fa18a-4522-441a-83ed-3abfa0540284', N'U', N'employees', N'<uid=12345682>', N'fr_actions', N'Ensure Apple remains challenged ', N'Ensure Apple remains challenged and engaged in his current role;', CAST(N'2017-04-14 13:39:06.537' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'7f868354-6ad9-4d14-b1c8-4411afc4344a', N'U', N'employees', N'<uid=12345681>', N'time_next_succ_poten_job', N'2Q15', N'3Q18+', CAST(N'2017-04-14 13:38:58.450' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'879446a5-39b6-4ea5-9417-4907096b8af9', N'U', N'employees', N'<uid=12345683>', N'diversity_code', N'NOT', N'NOT DIV', CAST(N'2017-04-14 13:39:10.500' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'b3b18467-9ea4-4ea4-b793-4b50a81dc464', N'U', N'employees', N'<uid=12345685>', N'manager_name', NULL, N'Delgado, Happy', CAST(N'2017-04-14 13:39:17.857' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'c7db594e-a6f4-4b63-a1a8-4d4b71ac623c', N'U', N'employees', N'<uid=12345682>', N'manager_name', NULL, N'Freeman, Morgan', CAST(N'2017-04-14 13:39:06.537' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'239a9728-6616-41ef-9f06-4e564fa3656e', N'U', N'employees', N'<uid=12345685>', N'time_next_succ_poten_job', N'2Q17', N'3Q18+', CAST(N'2017-04-14 13:39:17.857' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'5aacf189-445a-4d70-87dc-53884a5f4580', N'U', N'employees', N'<uid=12345683>', N'time_next_succ_poten_job', N'2Q17', N'2Q18', CAST(N'2017-04-14 13:39:10.500' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'7328055a-787c-46b1-812f-54ed907d3f47', N'U', N'employees', N'<uid=12345695>', N'vp_next_step', N'- Take steps to address developm', N'- Take steps to address development opportunities in priority ma', CAST(N'2017-04-14 13:40:30.100' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'0dee29fd-7472-4065-9ede-5534b9c4cc76', N'U', N'employees', N'<uid=12345686>', N'manager_name', NULL, N'Turner, Tina', CAST(N'2017-04-14 13:39:23.120' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'87d69330-e515-48ac-9da4-59473c1a409d', N'U', N'employees', N'<uid=12345689>', N'manager_name', NULL, N'King, Stephen', CAST(N'2017-04-14 13:40:04.483' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'70bea966-66eb-4bc1-8f80-59e05ea55969', N'U', N'employees', N'<uid=12345695>', N'manager_name', NULL, N'Sauce, Steak', CAST(N'2017-04-14 13:40:30.100' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'3b2a2d10-638f-4e87-94bb-5b89dfed0dae', N'U', N'employees', N'<uid=12345691>', N'time_next_succ_poten_job', N'3Q17', N'3Q18+', CAST(N'2017-04-14 13:40:08.877' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'05302b06-e2b7-419a-83ad-5c6d5baedd85', N'U', N'employees', N'<uid=12345691>', N'manager_name', NULL, N'Jobs, Steve', CAST(N'2017-04-14 13:40:08.877' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'20207f18-4d7e-404c-ac5a-640dc0147ba1', N'U', N'employees', N'<uid=12345688>', N'manager_name', NULL, N'Delgado, Happy', CAST(N'2017-04-14 13:40:02.457' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'1a32ed5a-1544-458a-ae44-67d10f49159b', N'U', N'employees', N'<uid=12345679>', N'ra_ldp_grad', N'', N'Yes', CAST(N'2017-04-14 13:38:30.030' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'd49a452b-d405-4bf0-835c-699cb3afcc48', N'U', N'employees', N'<uid=12345681>', N'ra_ldp_grad', N'', N'Yes', CAST(N'2017-04-14 13:38:58.450' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'04d4ac6b-6db6-4f24-a65f-7993405050b2', N'U', N'employees', N'<uid=12345679>', N'manager_name', NULL, N'Doe, Jane', CAST(N'2017-04-14 13:38:30.030' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'52a28712-9450-410c-a5e9-82eef8db1885', N'U', N'employees', N'<uid=12345687>', N'time_next_succ_poten_job', N'2Q16', N'2Q18', CAST(N'2017-04-14 13:39:59.183' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'01f243c1-ca1d-463f-b08d-84386f5583fe', N'U', N'employees', N'<uid=12345683>', N'manager_name', NULL, N'Freeman, Morgan', CAST(N'2017-04-14 13:39:10.500' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'55007032-7a02-4c76-971f-887cddb4711a', N'U', N'employees', N'<uid=12345690>', N'time_next_succ_poten_job', N'1Q17', N'3Q19+', CAST(N'2017-04-14 13:40:06.787' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'8163ba94-33b7-401a-a644-8b9e57b3dcd4', N'U', N'employees', N'<uid=12345693>', N'manager_name', NULL, N'Rock, Chris', CAST(N'2017-04-14 13:40:24.687' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'6abc9d67-73a6-48c8-853f-8eb6c9bf1347', N'U', N'employees', N'<uid=12345686>', N'former_ra_intern_coop', N'Yes', N'', CAST(N'2017-04-14 13:39:23.120' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'02667c80-c64b-4ff7-b109-92acf457f4f7', N'U', N'employees', N'<uid=12345690>', N'vp_reason', N'- Eager to learn and good presen', N'- Eager to learn and good presentation skills
- Confident, savvy', CAST(N'2017-04-14 13:40:06.787' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'9cd51102-9d17-44a7-bc62-92eb8d1ba7ef', N'U', N'employees', N'<uid=12345682>', N'ra_ldp_grad', N'Yes', N'', CAST(N'2017-04-14 13:39:06.537' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'705d21e4-407c-435a-9e6b-94bcad950a6f', N'U', N'employees', N'<uid=12345695>', N'vp_reason', N'- Demonstrates strength in devel', N'- Demonstrates strength in developing customer relationships 
- ', CAST(N'2017-04-14 13:40:30.100' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'1b11ac31-3c11-4f37-83de-99523a12ea25', N'U', N'employees', N'<uid=12345679>', N'former_ra_intern_coop', N'Yes', N'', CAST(N'2017-04-14 13:38:30.030' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'd699ddda-8242-4cae-ad57-9bf0b4a0a72b', N'U', N'employees', N'<uid=12345686>', N'time_next_succ_poten_job', N'3Q18+', N'3Q19+', CAST(N'2017-04-14 13:39:23.120' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'718ba21d-83a2-4c50-8bdd-9ec544fd66cf', N'U', N'employees', N'<uid=12345690>', N'must_move', N'Y', N'Yes', CAST(N'2017-04-14 13:40:06.787' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'80499ff3-f7b1-44b4-ab6f-9fa36fddd247', N'U', N'employees', N'<uid=12345692>', N'manager_name', NULL, N'Rock, Chris', CAST(N'2017-04-14 13:40:22.760' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'8f1f04d9-f006-40c9-b941-a66a941a6336', N'U', N'employees', N'<uid=12345680>', N'manager_name', NULL, N'Bunny, Bugs', CAST(N'2017-04-14 13:38:47.823' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'7d639ed1-601f-429d-baf7-aba5c2480665', N'U', N'employees', N'<uid=12345678>', N'manager_name', NULL, N'Gilmore, Happy', CAST(N'2017-04-14 12:48:21.237' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'c7c85810-efaf-4fc5-88f8-ababddff24f5', N'U', N'employees', N'<uid=12345690>', N'fr_actions', N'Support his move to Hollywood; C', N'Support his move to Hollywood; Champion for open position in J.J', CAST(N'2017-04-14 13:40:06.787' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'5a5f7cac-5eae-4546-8c4c-ad2c419f6494', N'U', N'employees', N'<uid=12345679>', N'time_next_succ_poten_job', N'4Q17', N'3Q18+', CAST(N'2017-04-14 13:38:30.030' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'8c53e0a7-ac1f-4463-96a0-b859d04105ed', N'U', N'employees', N'<uid=12345693>', N'vp_next_step', N'- Lead a task force
- Move to an', N'- Lead a task force
- Move to another product group to broaden p', CAST(N'2017-04-14 13:40:24.687' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'689834bc-badf-4c8d-9e71-ba8b949a45ac', N'U', N'employees', N'<uid=12345690>', N'fr_reason', N'Bradley has expressed a desire t', N'Bradley has expressed a desire to move to Hollywood for personal', CAST(N'2017-04-14 13:40:06.787' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'abff7797-8b79-472c-aa43-bda633a50d64', N'U', N'employees', N'<uid=12345693>', N'vp_reason', N'- Learns quickly
- Knowledgable
', N'- Learns quickly
- Knowledgable
- Willing to accept leadership r', CAST(N'2017-04-14 13:40:24.687' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'20c21dc7-875f-415a-92fb-c38f03cb2546', N'U', N'employees', N'<uid=12345687>', N'former_ra_intern_coop', N'', N'- Broaden ', CAST(N'2017-04-14 13:39:59.183' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'5956e2ae-95eb-4e27-a8cb-c500f1baf1df', N'U', N'employees', N'<uid=12345682>', N'diversity_code', N'NOT', N'NOT DIV', CAST(N'2017-04-14 13:39:06.537' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'a09a110e-0277-4884-bc21-cb38526bb220', N'U', N'employees', N'<uid=12345692>', N'time_next_succ_poten_job', N'4Q18', N'3Q19+', CAST(N'2017-04-14 13:40:22.760' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'd53b0214-33b6-4f0a-8a5e-ce320e41a177', N'U', N'employees', N'<uid=12345693>', N'time_next_succ_poten_job', N'4Q17', N'1Q18', CAST(N'2017-04-14 13:40:24.687' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'585c6f76-e563-42d4-86d1-ce48da0b15fa', N'U', N'employees', N'<uid=12345683>', N'former_ra_intern_coop', N'Yes', N'', CAST(N'2017-04-14 13:39:10.500' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'66ee5ba5-0eb5-4632-b55d-d2382732b706', N'U', N'employees', N'<uid=12345684>', N'manager_name', NULL, N'Elizabeth, Queen', CAST(N'2017-04-14 13:39:14.510' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'f701da43-0613-4cae-8c31-d833fe8eb202', N'U', N'employees', N'<uid=12345690>', N'former_ra_intern_coop', N'', N'- Assume f', CAST(N'2017-04-14 13:40:06.787' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'2b443009-0a24-40d8-be2c-dc1ee9270422', N'U', N'employees', N'<uid=12345690>', N'manager_name', NULL, N'Springsteen, Bruce', CAST(N'2017-04-14 13:40:06.787' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'9125d70a-6e61-4e45-9ec0-e2c443b17d99', N'U', N'employees', N'<uid=12345695>', N'former_ra_intern_coop', N'', N'- Take ste', CAST(N'2017-04-14 13:40:30.100' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'c153628b-bdff-495a-bcb9-e3e41010f9ea', N'U', N'employees', N'<uid=12345693>', N'ra_ldp_grad', N'', N'Yes', CAST(N'2017-04-14 13:40:24.687' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'67832f50-3553-4f3c-a180-e3fc8d975c5f', N'U', N'employees', N'<uid=12345684>', N'time_next_succ_poten_job', N'1Q17', N'3Q18', CAST(N'2017-04-14 13:39:14.510' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'8d456d4d-ae54-4175-b36e-e430084eb332', N'U', N'employees', N'<uid=12345687>', N'manager_name', NULL, N'Pie, Pumpkin', CAST(N'2017-04-14 13:39:59.183' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'dfa79dde-41ca-4271-98a4-e5a77e955bb7', N'U', N'employees', N'<uid=12345685>', N'position_title', N'Project Engineer, Embedded Softw', N'Project Engineer, Embedded Software', CAST(N'2017-04-14 13:39:17.857' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'4eac3044-2c07-4032-b382-e9034d9ae964', N'U', N'employees', N'<uid=12345688>', N'diversity_code', N'NOT', N'NOT DIV', CAST(N'2017-04-14 13:40:02.457' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'0577c43e-0164-48c7-bfb5-f1511a14e2d8', N'U', N'employees', N'<uid=12345693>', N'diversity_code', N'NOT', N'NOT DIV', CAST(N'2017-04-14 13:40:24.687' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'ab3635f9-8ca5-4978-936c-f1c46d7e807a', N'U', N'employees', N'<uid=12345684>', N'must_move', N'Y', N'Yes', CAST(N'2017-04-14 13:39:14.510' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'55fc7c11-c4b2-4067-a801-f1ea5fc83561', N'U', N'employees', N'<uid=12345695>', N'time_next_succ_poten_job', N'3Q17+', N'3Q18+', CAST(N'2017-04-14 13:40:30.100' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[Audit] ([Id], [Type], [TableName], [PK], [FieldName], [OldValue], [NewValue], [UpdateDate], [UserName]) VALUES (N'40fccbe4-e823-4a6e-be06-faa664ebcb11', N'U', N'employees', N'<uid=12345682>', N'time_next_succ_poten_job', N'3Q17', N'3Q19+', CAST(N'2017-04-14 13:39:06.537' AS DateTime), N'Ryubi\Ecora')
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345678', N'AJ@yahoo.com', N'Joy', N'Almond', N'Bleacher Spotlight (AS Only)', N'Supervisor, Mechanical Engineer', NULL, CAST(N'2015-03-11' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - SAFETY,SENSING & CONN', N'Gilmore, Happy', N'MECHANICAL ENGINEERING MANAGER', N'Mgr.', N'3Q18+', N'MECHANICAL ENGINEERING DIRECTOR', N'4Q18', NULL, NULL, NULL, NULL, N'M', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-11' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345679', N'SA@hotmail.com', N'Applewood', N'Sassy', N'HPL - BU', N'Senior Engineer Developer', NULL, CAST(N'2015-05-18' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - CONTROL & VIS BUS ENGRG', N'Doe, Jane', N'SR INFORMATION DEVELOPMENT', N'IC', N'4Q17', N'INFORMATION DEVELOPMENT, TEAM LE', N'3Q18+', NULL, NULL, NULL, NULL, N'F', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Yes', NULL, CAST(N'2001-01-12' AS Date), N'', N'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345680', N'RA@outlook.com', N'Washington', N'Kerry', N'ECHPL', N'Engineer, Hardware', NULL, CAST(N'2015-04-01' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - ASIA PAC BUS CENTER', N'Bunny, Bugs', N'TEAM LEADER, TEST', N'Mgr', N'2Q16', N'ENGINEERING MANAGER', N'3Q19+', NULL, NULL, NULL, NULL, N'FM', N'Non-US', N'Singapore', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Yes', NULL, CAST(N'2001-01-13' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345681', N'CA@gmail.com', N'Atlas', N'Chris', N'HPL', N'Product Manager', NULL, CAST(N'2015-01-01' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - SAFETY,SENSING & CONN', N'Joy, Almond', N'PRODUCT MANAGER, Other', N'Mgr', N'2Q15', N'MARKETING MANAGER', N'3Q18+', NULL, NULL, NULL, NULL, N'M', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-14' AS Date), N'', N'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345682', N'AB@yahoo.com', N'Baker', N'Apple', N'ECHPL', N'Program Leader', NULL, CAST(N'2015-06-01' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - CONTROL & VIS BUS PROD MGMT', N'Freeman, Morgan', N'MANAGER, COMMERCIAL ENGINEERING', N'Mgr', N'3Q17', N'COMMERCIAL ENGINEERING LEADERSHI', N'3Q19+', NULL, NULL, NULL, NULL, N'NOT DIV', N'US', N'United States', NULL, N'', N'', N'', N'', N'Yes', N'Medium', N'Apple is highly technical and being actively pursued by high-tec', N'Ensure Apple remains challenged and engaged in his current role;', N'', N'', N'', N'', NULL, CAST(N'2001-01-15' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345683', N'AE@yahoo.com', N'Einstein', N'Albert', N'HPL - BU', N'Director, Regional Sales', NULL, CAST(N'2014-01-13' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - INFORMATION SOFTWARE & PROCESS BUS', N'Freeman, Morgan', N'INDUSTRY MANAGER', N'Mgr', N'2Q17', N'GLOBAL SALES MANAGER', N'2Q18', NULL, NULL, NULL, NULL, N'NOT DIV', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-16' AS Date), N'', N'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345684', N'LG@outlook.com', N'Gaga', N'Lady', N'ECHPL', N'Senior Engineer, Software', NULL, CAST(N'2012-05-01' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - CONTROL & VIS BUS ENGRG', N'Elizabeth, Queen', N'SOFTWARE ENGINEER, PROJECT', N'IC', N'1Q17', N'TEAM LEAD', N'3Q18', NULL, NULL, NULL, NULL, N'F', N'Non-US', N'Poland', NULL, N'Yes', N'Career Move', N'Lady has a lot of talent and is ready for the next step in her career', N'Connect Lady with Elton John to explore promotion opportunities in his group', N'', N'', N'', N'', N'', N'', N'', N'Yes', NULL, CAST(N'2001-01-17' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345685', N'AS@gmail.com', N'Sandler', N'Adam', N'ECHPL', N'Project Engineer, Embedded Software', NULL, CAST(N'2015-05-04' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - CONTROL & VIS BUS ENGRG', N'Delgado, Happy', N'TEAM LEAD', N'Mgr', N'2Q17', N'DEVELOPMENT MANAGER, ESW', N'3Q18+', NULL, NULL, NULL, NULL, N'NOT DIV', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-18' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345686', N'DD@hotmail.com', N'Duck', N'Daphne', N'Bleacher Spotlight (AS Only)', N'Manager, Product Marketing', NULL, CAST(N'2016-10-15' AS Date), N'CONTROL PRODUCTS & SOLUTIONS', N'1', N'CPS - POWER CONTROL BUSINESS', N'Turner, Tina', N'Manager, Product Management (expanded role)', N'IC', N'3Q18+', N'BUSINESS MARKETING MANAGER', N'3Q19+', NULL, NULL, NULL, NULL, N'FM', N'Non-US', N'China', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-19' AS Date), N'', N'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345687', N'JF@outlook.com', N'Foster', N'Jody', N'HPL', N'Director, Engineering', NULL, CAST(N'2013-01-01' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - CONTROL & VIS BUS ENGRG', N'Pie, Pumpkin', N'DIRECTOR, ENGINEERING (SW, HW OR TEST)', N'Dir', N'2Q16', N'VP, ENGINEERING', N'2Q18', NULL, NULL, NULL, NULL, N'F', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'Yes', N'- Broad technical experience base and leadership skills
- Demons', N'- Broaden technical skills
- Follow through on development oppor', N'', NULL, CAST(N'2001-01-20' AS Date), N'- Broaden ', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345688', N'AK@msn.com', N'Kucher', N'Ashton', N'HPL', N'Sr Manager, Firmware Engineering', NULL, CAST(N'2014-01-01' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - CONTROL & VIS BUS ENGRG', N'Delgado, Happy', N'DIRECTOR, ENGINEERING', N'Dir', N'3Q17+', N'SR PROGRAM LEAD', N'3Q19+', NULL, NULL, NULL, NULL, N'NOT DIV', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-21' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345689', N'JH@outlook.com', N'Handy', N'Jimmy', N'Bleacher Spotlight (AS Only)', N'Application Engineer', NULL, CAST(N'2015-06-01' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - INFORMATION SOFTWARE & PROCESS BUS', N'King, Stephen', N'SR APPLICATION ENGINEER', N'IC', N'3Q18+', N'REGIONAL TECHNICAL LEADER', N'3Q18+', NULL, NULL, NULL, NULL, N'M', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-22' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345690', N'BC@hotmail.com', N'Cooper', N'Bradley', N'ECHPL', N'Product Specialist', NULL, CAST(N'2012-10-01' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - ASIA PAC BUS CENTER', N'Springsteen, Bruce', N'SR PRODUCT SPECIALIST', N'IC', N'1Q17', N'PRODUCT MANAGER', N'3Q19+', NULL, NULL, NULL, NULL, N'FM', N'Non-US', N'Singapore', NULL, N'Yes', N'Career Move', N'Bradley has expressed a desire to move to Hollywood for personal reasons, so he is focusing on that location for his next role', N'Encourage Bradley to apply for open position in J.J. Abrams'' group', N'Yes', N'High', N'Bradley has expressed a desire to move to Hollywood for personal', N'Support his move to Hollywood; Champion for open position in J.J', N'Yes', N'- Eager to learn and good presentation skills
- Confident, savvy', N'- Assume full responsibility for the management of her assigned ', N'', NULL, CAST(N'2001-01-23' AS Date), N'- Assume f', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345691', N'KH@aol.com', N'Hudson', N'Kate', N'HPL - BU', N'Manager, Software Engineering', NULL, CAST(N'2014-05-05' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - INFORMATION SOFTWARE & PROCESS BUS', N'Jobs, Steve', N'SR ENGINEERING MANAGER', N'Mgr', N'3Q17', N'DIRECTOR, SOFTWARE ENGINEERING', N'3Q18+', NULL, NULL, NULL, NULL, N'F', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-24' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345692', N'DW@yahoo.com', N'Washington', N'Denzell', N'HPL - BU', N'Business Manager', NULL, CAST(N'2015-01-01' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - ASIA PAC BUS CENTER', N'Rock, Chris', N'SENIOR BUSINESS MANAGER OR REGIONAL MARKETING MANAGER', N'Mgr', N'4Q18', N'SENIOR BUSINESS MANAGER OR REGIO', N'3Q19+', NULL, NULL, NULL, NULL, N'M', N'Non-US', N'Singapore', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-25' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345693', N'JT@outlook.com', N'Timberlake', N'Justin', N'ECHPL', N'Product Manager', NULL, CAST(N'2015-09-07' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - CONTROL & VIS BUS PROD MGMT', N'Rock, Chris', N'SOLUTIONS ARCHITECHT', N'IC', N'4Q17', N'Business Manager ', N'1Q18', NULL, NULL, NULL, NULL, N'NOT DIV', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'Yes', N'- Learns quickly
- Knowledgable
- Willing to accept leadership r', N'- Lead a task force
- Move to another product group to broaden p', N'', NULL, CAST(N'2001-01-26' AS Date), N'- Lead a t', N'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'12345695', N'CR@yahoo.com', N'Rock', N'Chris', N'HPL', N'Director, Product Management', NULL, CAST(N'2014-06-30' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - MOTION CONTROL', N'Sauce, Steak', N'Business Director', N'Dir', N'3Q17+', N'VP / GM, BUSINESS', N'3Q18+', NULL, NULL, NULL, NULL, N'M', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'Yes', N'- Demonstrates strength in developing customer relationships 
- ', N'- Take steps to address development opportunities in priority ma', N'', NULL, CAST(N'2001-01-27' AS Date), N'- Take ste', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Yes', NULL, NULL)
INSERT [dbo].[employees] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [active], [photo_url], [changed_by]) VALUES (N'4444444', NULL, N'john', N'hello', N'AAAAA', N'OWER', NULL, CAST(N'1900-01-01' AS Date), N'BUS', N'1111111', N'AAAAA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'No', NULL, NULL)
INSERT [dbo].[history] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [term], [status], [removal_reason], [removal_comments], [photo_url]) VALUES (N'4444444', NULL, N'john', N'hello', N'AAAAA', N'OWER', NULL, CAST(N'1900-01-01' AS Date), N'BUS', N'1111111', N'AAAAA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2017 Q1', N'removed', N'bad', NULL, NULL)
INSERT [dbo].[history] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [term], [status], [removal_reason], [removal_comments], [photo_url]) VALUES (N'12345678', N'AJ@yahoo.com', N'Joy', N'Almond', N'Bleacher Spotlight (AS Only)', N'Supervisor, Mechanical Engineer', NULL, CAST(N'2015-03-11' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - SAFETY,SENSING & CONN', NULL, N'MECHANICAL ENGINEERING MANAGER', N'Mgr.', N'3Q18+', N'MECHANICAL ENGINEERING DIRECTOR', N'3Q18+', NULL, NULL, NULL, NULL, N'M', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-11' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Q1 2017', N'Removed', N'Test remove sp', NULL, NULL)
INSERT [dbo].[history] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [term], [status], [removal_reason], [removal_comments], [photo_url]) VALUES (N'12345679', N'SA@hotmail.com', N'Applewood', N'Sassy', N'HPL - BU', N'Senior Engineer Developer', NULL, CAST(N'2015-05-18' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - CONTROL & VIS BUS ENGRG', NULL, N'SR INFORMATION DEVELOPMENT', N'IC', N'4Q17', N'INFORMATION DEVELOPMENT, TEAM LE', N'4Q17', NULL, NULL, NULL, NULL, N'F', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Yes', NULL, CAST(N'2001-01-12' AS Date), N'Yes', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Q1 2017', N'Removed', N'Remove test', NULL, NULL)
INSERT [dbo].[history] ([uid], [email], [last_name], [first_name], [talent_code], [position_title], [competencies], [cur_job_start_date], [bus_group], [hr_uid], [bus_unit], [manager_name], [next_poten_job], [functional_lvl_npj], [time_next_poten_job], [next_succ_poten_job], [time_next_succ_poten_job], [rd_code], [p_rd_code], [willing_to_relo], [padr_rating], [diversity_code], [passport], [country], [relo_code], [must_move], [mm_reason], [mm_desc], [mm_recom_action], [flight_risk], [fr_risk_lvl], [fr_reason], [fr_actions], [vp_potential], [vp_reason], [vp_next_step], [fy16_new_talent], [m_init], [company_start_date], [former_ra_intern_coop], [ra_ldp_grad], [product_focus], [suitability_ldshp_potential], [next_dev_steps], [ra_start_date], [early_career_start], [early_career_type], [human_synergistics], [human_synergistics_year], [term], [status], [removal_reason], [removal_comments], [photo_url]) VALUES (N'12345678', N'AJ@yahoo.com', N'Joy', N'Almond', N'Bleacher Spotlight (AS Only)', N'Supervisor, Mechanical Engineer', NULL, CAST(N'2015-03-11' AS Date), N'ARCHITECTURE & SOFTWARE', N'1', N'AS - SAFETY,SENSING & CONN', NULL, N'MECHANICAL ENGINEERING MANAGER', N'Mgr.', N'3Q18+', N'MECHANICAL ENGINEERING DIRECTOR', N'3Q18+', NULL, NULL, NULL, NULL, N'M', N'US', N'United States', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(N'2001-01-11' AS Date), N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Q2 2016', N'Removed', N'Test remove with different term', NULL, NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/12/2017 10:10:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 10/12/2017 10:10:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 10/12/2017 10:10:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 10/12/2017 10:10:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 10/12/2017 10:10:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/12/2017 10:10:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[sp_active]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_active]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[active]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_audit_retrieve]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROC [dbo].[sp_audit_retrieve]
	(
	@Id uniqueidentifier = null,
	@Type varchar(32) = NULL,
	@TableName varchar(32) = NULL,
	@PK varchar(32) = NULL,
	@FieldName varchar(32) = NULL,
	@OldValue varchar(max) = NULL,
	@NewValue varchar(max) = NULL,
	@UpdateDate date = NULL,
	@UserName varchar(32) = NULL
	)
as
begin
SELECT [Id],[Type],[TableName],[PK],[FieldName],[OldValue],[NewValue],[UpdateDate],[UserName]
  FROM [RTMS].[dbo].[Audit]
  WHERE (
  (@Id is NULL OR Id = @Id)
  AND (@Type is NULL OR Type LIKE '%' + @Type + '%') 
  AND (@TableName is NULL or TableName LIKE '%' + @TableName + '%')
  AND (@PK is NULL or PK LIKE '%' + @PK + '%')
  AND (@FieldName is NULL or FieldName LIKE '%' + @FieldName + '%')
  AND (@OldValue is NULL or OldValue LIKE '%' + @OldValue + '%')
  AND (@NewValue is NULL or NewValue LIKE '%' + @NewValue + '%')
  AND (@UpdateDate is NULL or UpdateDate = @UpdateDate)
  AND (@UserName is NULL or UserName LIKE '%' + @UserName + '%'))
  
  end

GO
/****** Object:  StoredProcedure [dbo].[sp_bus_grp]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_bus_grp]
as
BEGIN
SELECT [code]
  FROM [RTMS].[Class_def].[bus_grp]
  END

GO
/****** Object:  StoredProcedure [dbo].[sp_bus_unit]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_bus_unit]
as
BEGIN
SELECT [code]
  FROM [RTMS].[Class_def].[bus_unit]
  END

GO
/****** Object:  StoredProcedure [dbo].[sp_competencies]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_competencies]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[competencies]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_active]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_active]
   (@entry varchar(3)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.active
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_busgrp]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_busgrp]
   (@entry varchar(64)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.bus_grp
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_busunit]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_busunit]
   (@entry varchar(64)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.bus_unit
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_competencies]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_competencies]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.competencies
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_diversity]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_diversity]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.diversity
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_early_career_start]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_early_career_start]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.early_career_start
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_early_career_type]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_early_career_type]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.early_career_type
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_functional_lvl_npj]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_functional_lvl_npj]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.functional_lvl_npj
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_human_synergistics]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_human_synergistics]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.human_synergistics
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_mm_reason]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_mm_reason]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.mm_reason
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_p_rd_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_p_rd_code]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.p_rd_code
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_padr_rating]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_padr_rating]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.padr_rating
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_rd_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_rd_code]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.rd_code
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_region]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_region]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.region
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_relo_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_relo_code]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.relo_code
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_relo_interest]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_relo_interest]
   (@entry varchar(64)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.relo_interest
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_risk_lvl]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_risk_lvl]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.risk_lvl
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_stat]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_stat]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.stat
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_talent_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_talent_code]
   (@entry varchar(64)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.talent_code
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_time_nspj]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_time_nspj]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.time_nspj
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_delete_willing_to_relo]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_delete_willing_to_relo]
   (@entry varchar(32)
	)

AS
BEGIN
     DELETE 
     FROM   Class_def.willing_to_relo
     WHERE  
     code = @entry
END




GO
/****** Object:  StoredProcedure [dbo].[sp_diversity]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_diversity]
as
BEGIN
SELECT [code]
  FROM [RTMS].[Class_def].[diversity]
  END

GO
/****** Object:  StoredProcedure [dbo].[sp_early_career_start]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_early_career_start]
as
BEGIN
SELECT [code]
  FROM [RTMS].[Class_def].[early_career_start]
  END

GO
/****** Object:  StoredProcedure [dbo].[sp_early_career_type]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_early_career_type]
as
BEGIN
SELECT [code]
  FROM [RTMS].[Class_def].[early_career_type]
  END

GO
/****** Object:  StoredProcedure [dbo].[sp_employee_insert_update]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_employee_insert_update]
	-- Add the parameters for the stored procedure here
		@uid varchar(32) = NULL,
		@email varchar(128)= NULL,
		@last_name varchar(32)= NULL,
		@first_name varchar(32)= NULL,
		@talent_code varchar(64)= NULL,
		@position_title varchar(64)= NULL,
		@competencies varchar(32)= NULL,
		@cur_job_start_date DATE= NULL,
		@bus_group varchar(64)= NULL,
		@hr_uid varchar(32)= NULL,
		@bus_unit varchar(64)= NULL,
		@manager_name varchar(64)= NULL,
		@next_poten_job varchar(64)= NULL,
		@functional_lvl_npj varchar(32)= NULL,
		@time_next_poten_job varchar(32)= NULL,
		@next_succ_poten_job varchar(32)= NULL,
		@time_next_succ_poten_job varchar(32)= NULL,
		@rd_code varchar(32)= NULL,
		@p_rd_code varchar(32)= NULL,
		@willing_to_relo varchar(32)=NULL,
		@padr_rating varchar(32)=NULL,
		@diversity_code varchar(32)= NULL,
		@passport varchar(32)=NULL,
		@country varchar(32)=NULL,
		@relo_code varchar(32)=NULL,
		@must_move varchar(32)= NULL,
		@mm_reason varchar(32)= NULL,
		@mm_desc varchar(128)=NULL,
		@mm_recom_action varchar(128)=NULL,
		@flight_risk varchar(32)= NULL,
		@fr_risk_lvl varchar(32)= NULL,
		@fr_reason varchar(64)= NULL,
		@fr_actions varchar(64)=NULL,
		@vp_potential varchar(32)= NULL,
		@vp_reason varchar(64)= NULL,
		@vp_next_step varchar(64)= NULL,
		@fy16_new_talent varchar(32)= NULL,
		@m_init varchar(1)=NULL,
		@company_start_date date = NULL,
		@former_ra_intern_coop varchar(10) = NULL,
		@ra_ldp_grad varchar(10) = NULL,
		@product_focus varchar(32) = NULL,
		@suitability_ldshp_potential varchar(32) = NULL,
		@next_dev_steps varchar(32) = NULL,
		@ra_start_date date = NULL,
		@early_career_start varchar(32) = NULL,
		@early_career_type varchar(32) = NULL,
		@human_synergistics varchar(32) = NULL,
		@human_synergistics_year varchar(32) = NULL,
		@active varchar(3) = NULL,
		@photo_url varchar(max) = NULL,
		@changed_by varchar(32) = NULL
AS
	SET NOCOUNT ON;

	IF EXISTS (SELECT 1 FROM [employees] WHERE [uid]= @uid)
BEGIN
UPDATE employees
SET	   [email] = ISNULL (@email, email)
      ,[last_name] = ISNULL (@last_name, last_name)
      ,[first_name] = ISNULL (@first_name, first_name)
      ,[talent_code] = ISNULL (@talent_code, talent_code)
      ,[position_title] = ISNULL (@position_title, position_title)
      ,[competencies] = ISNULL (@competencies, competencies)
      ,[cur_job_start_date]= ISNULL (@cur_job_start_date, cur_job_start_date)
      ,[bus_group] = ISNULL (@bus_group, bus_group)
      ,[hr_uid] = ISNULL (@hr_uid, hr_uid)
      ,[bus_unit] = ISNULL (@bus_unit, bus_unit)
      ,[manager_name] = ISNULL (@manager_name, manager_name)
      ,[next_poten_job] = ISNULL (@next_poten_job, next_poten_job)
      ,[functional_lvl_npj] = ISNULL (@functional_lvl_npj, functional_lvl_npj)
      ,[time_next_poten_job] = ISNULL (@time_next_poten_job, time_next_poten_job)
      ,[next_succ_poten_job] = ISNULL (@next_succ_poten_job, @next_succ_poten_job)
      ,[time_next_succ_poten_job] = ISNULL (@time_next_succ_poten_job, time_next_succ_poten_job)
      ,[rd_code] = ISNULL (@rd_code, @rd_code)
      ,[p_rd_code] = ISNULL (@p_rd_code, p_rd_code)
      ,[willing_to_relo] = ISNULL (@willing_to_relo, willing_to_relo)
      ,[padr_rating] = ISNULL (@padr_rating, padr_rating)
      ,[diversity_code] = ISNULL (@diversity_code, diversity_code)
      ,[passport] = ISNULL (@passport, @passport)
      ,[country] = ISNULL (@country, country)
      ,[relo_code] = ISNULL (@relo_code, relo_code)
      ,[must_move] = ISNULL (@must_move, must_move)
      ,[mm_reason] = ISNULL (@mm_reason, mm_reason)
      ,[mm_desc] = ISNULL (@mm_desc, @mm_desc)
      ,[mm_recom_action] = ISNULL (@mm_recom_action, @mm_recom_action)
      ,[flight_risk] = ISNULL (@flight_risk, flight_risk)
      ,[fr_risk_lvl] = ISNULL (@fr_risk_lvl, fr_risk_lvl)
      ,[fr_reason] = ISNULL (@fr_reason, fr_reason)
      ,[fr_actions] = ISNULL (@fr_actions, fr_actions)
      ,[vp_potential] = ISNULL (@vp_potential, vp_potential)
      ,[vp_reason] = ISNULL (@vp_reason, vp_reason)
      ,[vp_next_step] = ISNULL (@vp_next_step, vp_next_step)
      ,[fy16_new_talent] = ISNULL (@fy16_new_talent, fy16_new_talent)
	  ,[m_init] = ISNULL (@m_init, m_init)
	  ,[company_start_date] = ISNULL (@company_start_date, company_start_date)
	  ,[former_ra_intern_coop] = ISNULL (@former_ra_intern_coop, former_ra_intern_coop)
	  ,[ra_ldp_grad] = ISNULL (@ra_ldp_grad, ra_ldp_grad)
	  ,[product_focus] = ISNULL (@product_focus, product_focus)
	  ,[suitability_ldshp_potential] = ISNULL (@suitability_ldshp_potential, suitability_ldshp_potential)
	  ,[next_dev_steps] = ISNULL (@next_dev_steps, next_dev_steps)
	  ,[ra_start_date] = ISNULL (@ra_start_date, ra_start_date)
	  ,[early_career_start] = ISNULL (@early_career_start, @early_career_start)
	  ,[early_career_type] = ISNULL (@early_career_type, @early_career_type)
	  ,[human_synergistics] = ISNULL (@human_synergistics, human_synergistics)
	  ,[human_synergistics_year] = ISNULL (@human_synergistics_year, human_synergistics_year)
	  ,[active] = ISNULL (@active, active)
	  ,[photo_url] = ISNULL (@photo_url, photo_url)
	  ,[changed_by] = ISNULL (@changed_by, changed_by)
	WHERE uid = @uid
END
ELSE
BEGIN
	INSERT INTO employees ( 
	   [uid]
      ,[email]
      ,[last_name]
      ,[first_name]
      ,[talent_code]
      ,[position_title]
      ,[competencies]
      ,[cur_job_start_date]
      ,[bus_group]
      ,[hr_uid]
      ,[bus_unit]
      ,[manager_name]
      ,[next_poten_job]
      ,[functional_lvl_npj]
      ,[time_next_poten_job]
      ,[next_succ_poten_job]
      ,[time_next_succ_poten_job]
      ,[rd_code]
      ,[p_rd_code]
      ,[willing_to_relo]
      ,[padr_rating]
      ,[diversity_code]
      ,[passport]
      ,[country]
      ,[relo_code]
      ,[must_move]
      ,[mm_reason]
      ,[mm_desc]
      ,[mm_recom_action]
      ,[flight_risk]
      ,[fr_risk_lvl]
      ,[fr_reason]
      ,[fr_actions]
      ,[vp_potential]
      ,[vp_reason]
      ,[vp_next_step]
      ,[fy16_new_talent]
	  ,[m_init]
	  ,[company_start_date]
	  ,[former_ra_intern_coop]
	  ,[ra_ldp_grad]
	  ,[product_focus]
	  ,[suitability_ldshp_potential]
	  ,[next_dev_steps]
	  ,[ra_start_date]
	  ,[early_career_start]
	  ,[early_career_type]
	  ,[human_synergistics]
	  ,[human_synergistics_year] 
	  ,[active]
	  ,[photo_url]
	  ,[changed_by]
	  )
	  VALUES(
	  	@uid,
		@email,
		@last_name,
		@first_name,
		@talent_code,
		@position_title,
		@competencies,
		@cur_job_start_date,
		@bus_group,
		@hr_uid,
		@bus_unit,
		@manager_name,
		@next_poten_job,
		@functional_lvl_npj,
		@time_next_poten_job,
		@next_succ_poten_job,
		@time_next_succ_poten_job,
		@rd_code,
		@p_rd_code,
		@willing_to_relo,
		@padr_rating,
		@diversity_code,
		@passport,
		@country,
		@relo_code,
		@must_move,
		@mm_reason,
		@mm_desc,
		@mm_recom_action,
		@flight_risk,
		@fr_risk_lvl,
		@fr_reason,
		@fr_actions,
		@vp_potential,
		@vp_reason,
		@vp_next_step,
		@fy16_new_talent,
		@m_init,
		@company_start_date,
		@former_ra_intern_coop,
		@ra_ldp_grad,
		@product_focus,
		@suitability_ldshp_potential,
		@next_dev_steps,
		@ra_start_date,
		@early_career_start,
		@early_career_type,
		@human_synergistics,
		@human_synergistics_year,
		@active,
		@photo_url,
		@changed_by
	  )
END

-----------------------------------------------------------------



GO
/****** Object:  StoredProcedure [dbo].[sp_employees_remove]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_employees_remove]
   (@uid varchar(32),
    @type varchar(32),
	@removal_reason varchar(max),
	@removal_commments varchar(max)
	)
AS
BEGIN

	DECLARE @year int;
	DECLARE @date date;
	DECLARE @TERM varchar(32);
	DECLARE @target date;
	SET @year = DATEPART(YYYY,GETDATE());
	SET @target = DATEFROMPARTS(@year,'6','30');
	SET @date = GETDATE();
	IF GETDATE() <= @target
		SET @TERM = CONVERT(varchar(4),@year)+' Q1'
	ELSE
		SET @TERM = CONVERT(varchar(4),@year)+' Q2'

	UPDATE employees
	SET active = 'No'
	WHERE uid = @uid

		INSERT INTO history (
	   [uid]
      ,[email]
      ,[last_name]
      ,[first_name]
      ,[talent_code]
      ,[position_title]
      ,[competencies]
      ,[cur_job_start_date]
      ,[bus_group]
      ,[hr_uid]
      ,[bus_unit]
      ,[manager_name]
      ,[next_poten_job]
      ,[functional_lvl_npj]
      ,[time_next_poten_job]
      ,[next_succ_poten_job]
      ,[time_next_succ_poten_job]
      ,[rd_code]
      ,[p_rd_code]
      ,[willing_to_relo]
      ,[padr_rating]
      ,[diversity_code]
      ,[passport]
      ,[country]
      ,[relo_code]
      ,[must_move]
      ,[mm_reason]
      ,[mm_desc]
      ,[mm_recom_action]
      ,[flight_risk]
      ,[fr_risk_lvl]
      ,[fr_reason]
      ,[fr_actions]
      ,[vp_potential]
      ,[vp_reason]
      ,[vp_next_step]
      ,[fy16_new_talent]
	  ,[m_init]
	  ,[company_start_date]
	  ,[former_ra_intern_coop]
	  ,[ra_ldp_grad]
	  ,[product_focus]
	  ,[suitability_ldshp_potential]
	  ,[next_dev_steps]
	  ,[ra_start_date]
	  ,[early_career_start]
	  ,[early_career_type]
	  ,[human_synergistics]
	  ,[human_synergistics_year]
	  ,[term]
	  ,[status]
	  ,[removal_reason]
	  ,[removal_comments]
	  ,[photo_url])
      SELECT
	   [uid]
      ,[email]
      ,[last_name]
      ,[first_name]
      ,[talent_code]
      ,[position_title]
      ,[competencies]
      ,[cur_job_start_date]
      ,[bus_group]
      ,[hr_uid]
      ,[bus_unit]
      ,[manager_name]
      ,[next_poten_job]
      ,[functional_lvl_npj]
      ,[time_next_poten_job]
      ,[next_succ_poten_job]
      ,[time_next_succ_poten_job]
      ,[rd_code]
      ,[p_rd_code]
      ,[willing_to_relo]
      ,[padr_rating]
      ,[diversity_code]
      ,[passport]
      ,[country]
      ,[relo_code]
      ,[must_move]
      ,[mm_reason]
      ,[mm_desc]
      ,[mm_recom_action]
      ,[flight_risk]
      ,[fr_risk_lvl]
      ,[fr_reason]
      ,[fr_actions]
      ,[vp_potential]
      ,[vp_reason]
      ,[vp_next_step]
      ,[fy16_new_talent]
	  ,[m_init]
	  ,[company_start_date]
	  ,[former_ra_intern_coop]
	  ,[ra_ldp_grad]
	  ,[product_focus]
	  ,[suitability_ldshp_potential]
	  ,[next_dev_steps]
	  ,[ra_start_date]
	  ,[early_career_start]
	  ,[early_career_type]
	  ,[human_synergistics]
	  ,[human_synergistics_year]
	  , @TERM
	  , @type
	  , @removal_reason
	  ,@removal_commments
	  ,[photo_url]
        FROM employees
        WHERE uid = @uid
END




---------------------------------------------------



GO
/****** Object:  StoredProcedure [dbo].[sp_employees_remove_all]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_employees_remove_all]
	(@term varchar(32))

AS
BEGIN
    INSERT INTO history 
        SELECT * 
        FROM employees
        WHERE status = 'Active'
END

BEGIN
	UPDATE employees
	SET term = COALESCE(@term, term)	
	WHERE status = 'Active'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_employees_retrieve]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROC [dbo].[sp_employees_retrieve]
	(
		@uid varchar(32) = NULL,
		@email varchar(128)= NULL,
		@last_name varchar(32)= NULL,
		@first_name varchar(32)= NULL,
		@talent_code varchar(64)= NULL,
		@position_title varchar(64)= NULL,
		@competencies varchar(32)= NULL,
		@cur_job_start_date_begin DATE = NULL,
		@cur_job_start_date_end DATE = NULL,
		@bus_group varchar(64)= NULL,
		@hr_uid varchar(32)= NULL,
		@bus_unit varchar(64)= NULL,
		@manager_name varchar(64)= NULL,
		@next_poten_job varchar(64)= NULL,
		@functional_lvl_npj varchar(32)= NULL,
		@time_next_poten_job varchar(32)= NULL,
		@next_succ_poten_job varchar(32)= NULL,
		@time_next_succ_poten_job varchar(32)= NULL,
		@rd_code varchar(32)= NULL,
		@p_rd_code varchar(32)= NULL,
		@willing_to_relo varchar(32)=NULL,
		@padr_rating varchar(32)=NULL,
		@diversity_code varchar(32)= NULL,
		@passport varchar(32)=NULL,
		@country varchar(32)=NULL,
		@relo_code varchar(32)=NULL,
		@must_move varchar(32)= NULL,
		@mm_reason varchar(32)= NULL,
		@mm_desc varchar(128)=NULL,
		@mm_recom_action varchar(128)=NULL,
		@flight_risk varchar(32)= NULL,
		@fr_risk_lvl varchar(32)= NULL,
		@fr_reason varchar(64)= NULL,
		@fr_actions varchar(64)=NULL,
		@vp_potential varchar(32)= NULL,
		@vp_reason varchar(64)= NULL,
		@vp_next_step varchar(64)= NULL,
		@fy16_new_talent varchar(32)= NULL,
		@m_init varchar(1)=NULL,
		@company_start_date_begin date = NULL,
		@company_start_date_end date = NULL,
		@former_ra_intern_coop varchar(10) = NULL,
		@ra_ldp_grad varchar(10) = NULL,
		@product_focus varchar(32) = NULL,
		@suitability_ldshp_potential varchar(32) = NULL,
		@next_dev_steps varchar(32) = NULL,
		@ra_start_date_begin date = NULL,
		@ra_start_date_end date = NULL,
		@early_career_start varchar(32) = NULL,
		@early_career_type varchar(32) = NULL,
		@human_synergistics varchar(32) = NULL,
		@human_synergistics_year varchar(32) = NULL,
		@active varchar(32) = NULL
	)
as
	SET @company_start_date_begin = ISNULL(@company_start_date_begin, '1-1-1900');
	SET @company_start_date_end = ISNULL(@company_start_date_end, GETDATE());
	SET @cur_job_start_date_begin = ISNULL(@cur_job_start_date_begin, '1-1-1900');
	SET @cur_job_start_date_end = ISNULL(@cur_job_start_date_end, GETDATE());
	SET @ra_start_date_begin = ISNULL(@ra_start_date_begin, '1-1-1900');
	SET @ra_start_date_end = ISNULL(@ra_start_date_end, GETDATE());
begin
SELECT [uid]
      ,[email]
      ,[last_name]
      ,[first_name]
      ,[talent_code]
      ,[position_title]
      ,[competencies]
      ,[cur_job_start_date]
      ,[bus_group]
      ,[hr_uid]
      ,[bus_unit]
      ,[manager_name]
      ,[next_poten_job]
      ,[functional_lvl_npj]
      ,[time_next_poten_job]
      ,[next_succ_poten_job]
      ,[time_next_succ_poten_job]
      ,[rd_code]
      ,[p_rd_code]
      ,[willing_to_relo]
      ,[padr_rating]
      ,[diversity_code]
      ,[passport]
      ,[country]
      ,[relo_code]
      ,[must_move]
      ,[mm_reason]
      ,[mm_desc]
      ,[mm_recom_action]
      ,[flight_risk]
      ,[fr_risk_lvl]
      ,[fr_reason]
      ,[fr_actions]
      ,[vp_potential]
      ,[vp_reason]
      ,[vp_next_step]
      ,[fy16_new_talent]
	  ,[m_init]
	  ,[company_start_date]
	  ,[former_ra_intern_coop]
	  ,[ra_ldp_grad]
	  ,[product_focus]
	  ,[suitability_ldshp_potential]
	  ,[next_dev_steps]
	  ,[ra_start_date]
	  ,[early_career_start]
	  ,[early_career_type]
	  ,[human_synergistics]
	  ,[human_synergistics_year] 
	  ,[active]
	  ,[photo_url]

  FROM [RTMS].[dbo].[employees]
  WHERE ((@uid IS NULL OR uid LIKE '%' + @uid + '%') 
  AND (@email is NULL or email LIKE '%' + @email + '%')
  AND (@first_name is NULL or first_name LIKE '%' + @first_name + '%')
  AND (@last_name is NULL or last_name LIKE '%' + @last_name + '%')
  AND (@talent_code is NULL or talent_code LIKE '%' + @talent_code + '%')
  AND (@position_title is NULL or position_title LIKE '%' + @position_title + '%')
  AND (@competencies is NULL or competencies LIKE '%' + @competencies + '%')
  AND (cur_job_start_date BETWEEN @cur_job_start_date_begin AND @cur_job_start_date_end)
  AND (@bus_group is NULL or bus_group LIKE '%' + @bus_group + '%')
  AND (@hr_uid is NULL or hr_uid LIKE '%' + @hr_uid + '%')
  AND (@bus_unit is NULL or bus_unit LIKE '%' + @bus_unit + '%')
  AND (@manager_name is NULL or manager_name LIKE '%' + @manager_name + '%')
  AND (@next_poten_job is NULL or next_poten_job LIKE '%' + @next_poten_job + '%')
  AND (@functional_lvl_npj is NULL or functional_lvl_npj LIKE '%' + @functional_lvl_npj + '%')
  AND (@time_next_poten_job is NULL or time_next_poten_job LIKE '%' + @time_next_poten_job + '%')
  AND (@next_succ_poten_job is NULL or next_succ_poten_job LIKE '%' + @next_succ_poten_job + '%')
  AND (@time_next_succ_poten_job is NULL or time_next_succ_poten_job LIKE '%' + @time_next_succ_poten_job + '%')
  AND (@rd_code is NULL or rd_code LIKE '%' + @rd_code + '%')
  AND (@p_rd_code is NULL or p_rd_code LIKE '%' + @p_rd_code + '%')
  AND (@willing_to_relo is NULL or willing_to_relo LIKE '%' + @willing_to_relo + '%')
  AND (@padr_rating is NULL or padr_rating LIKE '%' + @padr_rating + '%')
  AND (@diversity_code is NULL or diversity_code LIKE '%' + @diversity_code + '%')
  AND (@passport is NULL or passport LIKE '%' + @passport + '%')
  AND (@country is NULL or country LIKE '%' + @country + '%')
  AND (@relo_code is NULL or relo_code LIKE '%' + @relo_code + '%')
  AND (@must_move is NULL or must_move LIKE '%' + @must_move + '%')
  AND (@mm_reason is NULL or mm_reason LIKE '%' + @mm_reason + '%')
  AND (@mm_desc is NULL or mm_desc LIKE '%' + @mm_reason + '%')
  AND (@mm_recom_action is NULL or mm_recom_action LIKE '%' + @mm_recom_action + '%')
  AND (@flight_risk is NULL or flight_risk LIKE '%' + @flight_risk + '%')
  AND (@fr_risk_lvl is NULL or fr_risk_lvl LIKE '%' + @fr_risk_lvl + '%')
  AND (@fr_reason is NULL or fr_reason LIKE '%' + @fr_reason + '%')
  AND (@fr_actions is NULL or fr_actions LIKE '%' + @fr_actions + '%')
  AND (@vp_potential is NULL or vp_potential LIKE '%' + @vp_potential + '%')
  AND (@vp_reason is NULL or vp_reason LIKE '%' + @vp_reason + '%')
  AND (@vp_next_step is NULL or vp_next_step LIKE '%' + @vp_next_step + '%')
  AND (@fy16_new_talent is NULL or fy16_new_talent LIKE '%' + @fy16_new_talent + '%')
  AND (@m_init is NULL or m_init LIKE '%' + @m_init + '%')
  AND (company_start_date BETWEEN @company_start_date_begin AND @company_start_date_end)
  AND (@former_ra_intern_coop is NULL or former_ra_intern_coop LIKE '%' + @former_ra_intern_coop + '%')
  AND (@ra_ldp_grad is NULL or ra_ldp_grad LIKE '%' + @ra_ldp_grad + '%')
  AND (@product_focus is NULL or product_focus LIKE '%' + @product_focus + '%')
  AND (@suitability_ldshp_potential is NULL or suitability_ldshp_potential LIKE '%' + @suitability_ldshp_potential + '%')
  AND (@next_dev_steps is NULL or next_dev_steps LIKE '%' + @next_dev_steps + '%')
  /*AND (ra_start_date BETWEEN @ra_start_date_begin AND @ra_start_date_end)*/
  AND (@early_career_start is NULL or early_career_start LIKE '%' + @early_career_start + '%')
  AND (@early_career_type is NULL or early_career_type LIKE '%' + @early_career_type + '%')
  AND (@human_synergistics is NULL or human_synergistics LIKE '%' + @human_synergistics + '%')
  AND (@human_synergistics_year is NULL or human_synergistics_year LIKE '%' + @human_synergistics_year + '%') 
  AND (@active is NULL or active LIKE '%' + @active + '%')
  )
  end

GO
/****** Object:  StoredProcedure [dbo].[sp_employees_update]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_employees_update]
	(
		@uid varchar(32) = NULL,
		@email varchar(128)= NULL,
		@last_name varchar(32)= NULL,
		@first_name varchar(32)= NULL,
		@talent_code varchar(64)= NULL,
		@position_title varchar(64)= NULL,
		@competencies varchar(32)= NULL,
		@cur_job_start_date DATE= NULL,
		@bus_group varchar(64)= NULL,
		@hr_uid varchar(32)= NULL,
		@bus_unit varchar(64)= NULL,
		@manager_name varchar(64)= NULL,
		@next_poten_job varchar(64)= NULL,
		@functional_lvl_npj varchar(32)= NULL,
		@time_next_poten_job varchar(32)= NULL,
		@next_succ_poten_job varchar(32)= NULL,
		@time_next_succ_poten_job varchar(32)= NULL,
		@rd_code varchar(32)= NULL,
		@p_rd_code varchar(32)= NULL,
		@willing_to_relo varchar(32)=NULL,
		@padr_rating varchar(32)=NULL,
		@diversity_code varchar(32)= NULL,
		@passport varchar(32)=NULL,
		@country varchar(32)=NULL,
		@relo_code varchar(32)=NULL,
		@must_move varchar(32)= NULL,
		@mm_reason varchar(32)= NULL,
		@mm_desc varchar(128)=NULL,
		@mm_recom_action varchar(128)=NULL,
		@flight_risk varchar(32)= NULL,
		@fr_risk_lvl varchar(32)= NULL,
		@fr_reason varchar(64)= NULL,
		@fr_actions varchar(64)=NULL,
		@vp_potential varchar(32)= NULL,
		@vp_reason varchar(64)= NULL,
		@vp_next_step varchar(64)= NULL,
		@fy16_new_talent varchar(32)= NULL,
		@m_init varchar(1)=NULL,
		@company_start_date date = NULL,
		@former_ra_intern_coop varchar(10) = NULL,
		@ra_ldp_grad varchar(10) = NULL,
		@product_focus varchar(32) = NULL,
		@suitability_ldshp_potential varchar(32) = NULL,
		@next_dev_steps varchar(32) = NULL,
		@ra_start_date date = NULL,
		@early_career_start varchar(32) = NULL,
		@early_career_type varchar(32) = NULL,
		@human_synergistics varchar(32) = NULL,
		@human_synergistics_year int = NULL,  
		@term varchar(32) = NULL,
		@status varchar(32) = NULL,
		@removal_reason varchar(max) = NULL 
	)
	AS
	BEGIN
UPDATE employees
SET	   [uid] = ISNULL (@uid, uid)
      ,[email] = ISNULL (@email, email)
      ,[last_name] = ISNULL (@last_name, last_name)
      ,[first_name] = ISNULL (@first_name, first_name)
      ,[talent_code] = ISNULL (@talent_code, talent_code)
      ,[position_title] = ISNULL (@position_title, position_title)
      ,[competencies] = ISNULL (@competencies, competencies)
      ,[cur_job_start_date]= ISNULL (@cur_job_start_date, cur_job_start_date)
      ,[bus_group] = ISNULL (@bus_group, bus_group)
      ,[hr_uid] = ISNULL (@hr_uid, hr_uid)
      ,[bus_unit] = ISNULL (@bus_unit, bus_unit)
      ,[manager_name] = ISNULL (@manager_name, manager_name)
      ,[next_poten_job] = ISNULL (@next_poten_job, next_poten_job)
      ,[functional_lvl_npj] = ISNULL (@functional_lvl_npj, functional_lvl_npj)
      ,[time_next_poten_job] = ISNULL (@time_next_poten_job, time_next_poten_job)
      ,[next_succ_poten_job] = ISNULL (@next_succ_poten_job, @next_succ_poten_job)
      ,[time_next_succ_poten_job] = ISNULL (@time_next_succ_poten_job, time_next_succ_poten_job)
      ,[rd_code] = ISNULL (@rd_code, @rd_code)
      ,[p_rd_code] = ISNULL (@p_rd_code, p_rd_code)
      ,[willing_to_relo] = ISNULL (@willing_to_relo, willing_to_relo)
      ,[padr_rating] = ISNULL (@padr_rating, padr_rating)
      ,[diversity_code] = ISNULL (@diversity_code, diversity_code)
      ,[passport] = ISNULL (@passport, @passport)
      ,[country] = ISNULL (@country, country)
      ,[relo_code] = ISNULL (@relo_code, relo_code)
      ,[must_move] = ISNULL (@must_move, must_move)
      ,[mm_reason] = ISNULL (@mm_reason, mm_reason)
      ,[mm_desc] = ISNULL (@mm_desc, @mm_desc)
      ,[mm_recom_action] = ISNULL (@mm_recom_action, @mm_recom_action)
      ,[flight_risk] = ISNULL (@flight_risk, flight_risk)
      ,[fr_risk_lvl] = ISNULL (@fr_risk_lvl, fr_risk_lvl)
      ,[fr_reason] = ISNULL (@fr_reason, fr_reason)
      ,[fr_actions] = ISNULL (@fr_actions, fr_actions)
      ,[vp_potential] = ISNULL (@vp_potential, vp_potential)
      ,[vp_reason] = ISNULL (@vp_reason, vp_reason)
      ,[vp_next_step] = ISNULL (@vp_next_step, vp_next_step)
      ,[fy16_new_talent] = ISNULL (@fy16_new_talent, fy16_new_talent)
	  ,[m_init] = ISNULL (@m_init, m_init)
	  ,[company_start_date] = ISNULL (@company_start_date, company_start_date)
	  ,[former_ra_intern_coop] = ISNULL (@former_ra_intern_coop, former_ra_intern_coop)
	  ,[ra_ldp_grad] = ISNULL (@ra_ldp_grad, ra_ldp_grad)
	  ,[product_focus] = ISNULL (@product_focus, product_focus)
	  ,[suitability_ldshp_potential] = ISNULL (@suitability_ldshp_potential, suitability_ldshp_potential)
	  ,[next_dev_steps] = ISNULL (@next_dev_steps, next_dev_steps)
	  ,[ra_start_date] = ISNULL (@ra_start_date, ra_start_date)
	  ,[early_career_start] = ISNULL (@early_career_start, @early_career_start)
	  ,[early_career_type] = ISNULL (@early_career_type, @early_career_type)
	  ,[human_synergistics] = ISNULL (@human_synergistics, human_synergistics)
	  ,[human_synergistics_year] = ISNULL (@human_synergistics_year, human_synergistics_year)
	  ,[term] = ISNULL (@term, term)
	  ,[status] = ISNULL (@status, status)
	  ,[removal_reason]  = ISNULL (@removal_reason, removal_reason)
		
	WHERE uid = @uid
	  end


--------------------------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_end_term_backup]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_end_term_backup]
AS
BEGIN

	DECLARE @year int;
	DECLARE @date date;
	DECLARE @TERM varchar(32);
	DECLARE @target date;
	DECLARE @type varchar(32);
	SET @type = 'Active';
	SET @year = DATEPART(YYYY,GETDATE());
	SET @target = DATEFROMPARTS(@year,'6','30');
	SET @date = GETDATE();
	IF GETDATE() <= @target
		SET @TERM = CONVERT(varchar(4),@year)+' Q1'
	ELSE
		SET @TERM = CONVERT(varchar(4),@year)+' Q2'

		INSERT INTO history (
	   [uid]
      ,[email]
      ,[last_name]
      ,[first_name]
      ,[talent_code]
      ,[position_title]
      ,[competencies]
      ,[cur_job_start_date]
      ,[bus_group]
      ,[hr_uid]
      ,[bus_unit]
      ,[manager_name]
      ,[next_poten_job]
      ,[functional_lvl_npj]
      ,[time_next_poten_job]
      ,[next_succ_poten_job]
      ,[time_next_succ_poten_job]
      ,[rd_code]
      ,[p_rd_code]
      ,[willing_to_relo]
      ,[padr_rating]
      ,[diversity_code]
      ,[passport]
      ,[country]
      ,[relo_code]
      ,[must_move]
      ,[mm_reason]
      ,[mm_desc]
      ,[mm_recom_action]
      ,[flight_risk]
      ,[fr_risk_lvl]
      ,[fr_reason]
      ,[fr_actions]
      ,[vp_potential]
      ,[vp_reason]
      ,[vp_next_step]
      ,[fy16_new_talent]
	  ,[m_init]
	  ,[company_start_date]
	  ,[former_ra_intern_coop]
	  ,[ra_ldp_grad]
	  ,[product_focus]
	  ,[suitability_ldshp_potential]
	  ,[next_dev_steps]
	  ,[ra_start_date]
	  ,[early_career_start]
	  ,[early_career_type]
	  ,[human_synergistics]
	  ,[human_synergistics_year]
	  ,[term]
	  ,[status]
	)
      SELECT
	   [uid]
      ,[email]
      ,[last_name]
      ,[first_name]
      ,[talent_code]
      ,[position_title]
      ,[competencies]
      ,[cur_job_start_date]
      ,[bus_group]
      ,[hr_uid]
      ,[bus_unit]
      ,[manager_name]
      ,[next_poten_job]
      ,[functional_lvl_npj]
      ,[time_next_poten_job]
      ,[next_succ_poten_job]
      ,[time_next_succ_poten_job]
      ,[rd_code]
      ,[p_rd_code]
      ,[willing_to_relo]
      ,[padr_rating]
      ,[diversity_code]
      ,[passport]
      ,[country]
      ,[relo_code]
      ,[must_move]
      ,[mm_reason]
      ,[mm_desc]
      ,[mm_recom_action]
      ,[flight_risk]
      ,[fr_risk_lvl]
      ,[fr_reason]
      ,[fr_actions]
      ,[vp_potential]
      ,[vp_reason]
      ,[vp_next_step]
      ,[fy16_new_talent]
	  ,[m_init]
	  ,[company_start_date]
	  ,[former_ra_intern_coop]
	  ,[ra_ldp_grad]
	  ,[product_focus]
	  ,[suitability_ldshp_potential]
	  ,[next_dev_steps]
	  ,[ra_start_date]
	  ,[early_career_start]
	  ,[early_career_type]
	  ,[human_synergistics]
	  ,[human_synergistics_year]
	  , @TERM
	  , @type
        FROM employees
END




---------------------------------------------------



GO
/****** Object:  StoredProcedure [dbo].[sp_functional_lvl]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_functional_lvl]
as
BEGIN
SELECT [code]
  FROM [RTMS].[Class_def].[functional_lvl_npj]
  END

GO
/****** Object:  StoredProcedure [dbo].[sp_functional_lvl_npj]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_functional_lvl_npj]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[functional_lvl_npj]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_history_insert_update]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROC [dbo].[sp_history_insert_update]
	(
		@uid varchar(32) = NULL,
		@email varchar(128)= NULL,
		@last_name varchar(32)= NULL,
		@first_name varchar(32)= NULL,
		@talent_code varchar(64)= NULL,
		@position_title varchar(64)= NULL,
		@competencies varchar(32)= NULL,
		@cur_job_start_date DATE = NULL,
		@bus_group varchar(64)= NULL,
		@hr_uid varchar(32)= NULL,
		@bus_unit varchar(64)= NULL,
		@manager_name varchar(64)= NULL,
		@next_poten_job varchar(64)= NULL,
		@functional_lvl_npj varchar(32)= NULL,
		@time_next_poten_job varchar(32)= NULL,
		@next_succ_poten_job varchar(32)= NULL,
		@time_next_succ_poten_job varchar(32)= NULL,
		@rd_code varchar(32)= NULL,
		@p_rd_code varchar(32)= NULL,
		@willing_to_relo varchar(32)=NULL,
		@padr_rating varchar(32)=NULL,
		@diversity_code varchar(32)= NULL,
		@passport varchar(32)=NULL,
		@country varchar(32)=NULL,
		@relo_code varchar(32)=NULL,
		@must_move varchar(32)= NULL,
		@mm_reason varchar(32)= NULL,
		@mm_desc varchar(128)=NULL,
		@mm_recom_action varchar(128)=NULL,
		@flight_risk varchar(32)= NULL,
		@fr_risk_lvl varchar(32)= NULL,
		@fr_reason varchar(64)= NULL,
		@fr_actions varchar(64)=NULL,
		@vp_potential varchar(32)= NULL,
		@vp_reason varchar(64)= NULL,
		@vp_next_step varchar(64)= NULL,
		@fy16_new_talent varchar(32)= NULL,
		@m_init varchar(1)=NULL,
		@company_start_date date = NULL,
		@former_ra_intern_coop varchar(10) = NULL,
		@ra_ldp_grad varchar(10) = NULL,
		@product_focus varchar(32) = NULL,
		@suitability_ldshp_potential varchar(32) = NULL,
		@next_dev_steps varchar(32) = NULL,
		@ra_start_date date = NULL,
		@early_career_start varchar(32) = NULL,
		@early_career_type varchar(32) = NULL,
		@human_synergistics varchar(32) = NULL,
		@human_synergistics_year varchar(32) = NULL,  
		@term varchar(32) = NULL,
		@status varchar(32) = NULL,
		@removal_reason varchar(max) = NULL ,
		@removal_comments varchar(max) = NULL
	)
as
IF EXISTS (SELECT 1 FROM [history] WHERE [uid]= @uid and [term] = @term)

begin
UPDATE history
SET	   [email] = ISNULL (@email, email)
      ,[last_name] = ISNULL (@last_name, last_name)
      ,[first_name] = ISNULL (@first_name, first_name)
      ,[talent_code] = ISNULL (@talent_code, talent_code)
      ,[position_title] = ISNULL (@position_title, position_title)
      ,[competencies] = ISNULL (@competencies, competencies)
      ,[cur_job_start_date]= ISNULL (@cur_job_start_date, cur_job_start_date)
      ,[bus_group] = ISNULL (@bus_group, bus_group)
      ,[hr_uid] = ISNULL (@hr_uid, hr_uid)
      ,[bus_unit] = ISNULL (@bus_unit, bus_unit)
      ,[manager_name] = ISNULL (@manager_name, manager_name)
      ,[next_poten_job] = ISNULL (@next_poten_job, next_poten_job)
      ,[functional_lvl_npj] = ISNULL (@functional_lvl_npj, functional_lvl_npj)
      ,[time_next_poten_job] = ISNULL (@time_next_poten_job, time_next_poten_job)
      ,[next_succ_poten_job] = ISNULL (@next_succ_poten_job, @next_succ_poten_job)
      ,[time_next_succ_poten_job] = ISNULL (@time_next_succ_poten_job, time_next_succ_poten_job)
      ,[rd_code] = ISNULL (@rd_code, @rd_code)
      ,[p_rd_code] = ISNULL (@p_rd_code, p_rd_code)
      ,[willing_to_relo] = ISNULL (@willing_to_relo, willing_to_relo)
      ,[padr_rating] = ISNULL (@padr_rating, padr_rating)
      ,[diversity_code] = ISNULL (@diversity_code, diversity_code)
      ,[passport] = ISNULL (@passport, @passport)
      ,[country] = ISNULL (@country, country)
      ,[relo_code] = ISNULL (@relo_code, relo_code)
      ,[must_move] = ISNULL (@must_move, must_move)
      ,[mm_reason] = ISNULL (@mm_reason, mm_reason)
      ,[mm_desc] = ISNULL (@mm_desc, @mm_desc)
      ,[mm_recom_action] = ISNULL (@mm_recom_action, @mm_recom_action)
      ,[flight_risk] = ISNULL (@flight_risk, flight_risk)
      ,[fr_risk_lvl] = ISNULL (@fr_risk_lvl, fr_risk_lvl)
      ,[fr_reason] = ISNULL (@fr_reason, fr_reason)
      ,[fr_actions] = ISNULL (@fr_actions, fr_actions)
      ,[vp_potential] = ISNULL (@vp_potential, vp_potential)
      ,[vp_reason] = ISNULL (@vp_reason, vp_reason)
      ,[vp_next_step] = ISNULL (@vp_next_step, vp_next_step)
      ,[fy16_new_talent] = ISNULL (@fy16_new_talent, fy16_new_talent)
	  ,[m_init] = ISNULL (@m_init, m_init)
	  ,[company_start_date] = ISNULL (@company_start_date, company_start_date)
	  ,[former_ra_intern_coop] = ISNULL (@former_ra_intern_coop, former_ra_intern_coop)
	  ,[ra_ldp_grad] = ISNULL (@ra_ldp_grad, ra_ldp_grad)
	  ,[product_focus] = ISNULL (@product_focus, product_focus)
	  ,[suitability_ldshp_potential] = ISNULL (@suitability_ldshp_potential, suitability_ldshp_potential)
	  ,[next_dev_steps] = ISNULL (@next_dev_steps, next_dev_steps)
	  ,[ra_start_date] = ISNULL (@ra_start_date, ra_start_date)
	  ,[early_career_start] = ISNULL (@early_career_start, @early_career_start)
	  ,[early_career_type] = ISNULL (@early_career_type, @early_career_type)
	  ,[human_synergistics] = ISNULL (@human_synergistics, human_synergistics)
	  ,[human_synergistics_year] = ISNULL (@human_synergistics_year, human_synergistics_year)
	  ,[status] = ISNULL (@status, status)
	  ,[removal_reason]  = ISNULL (@removal_reason, removal_reason)
	  ,[removal_comments] = ISNULL (@removal_comments, removal_comments)
  WHERE (uid = @uid) AND (term = @term)
  END 
  ELSE
  BEGIN
  INSERT INTO history(
  [uid]
      ,[email]
      ,[last_name]
      ,[first_name]
      ,[talent_code]
      ,[position_title]
      ,[competencies]
      ,[cur_job_start_date]
      ,[bus_group]
      ,[hr_uid]
      ,[bus_unit]
      ,[manager_name]
      ,[next_poten_job]
      ,[functional_lvl_npj]
      ,[time_next_poten_job]
      ,[next_succ_poten_job]
      ,[time_next_succ_poten_job]
      ,[rd_code]
      ,[p_rd_code]
      ,[willing_to_relo]
      ,[padr_rating]
      ,[diversity_code]
      ,[passport]
      ,[country]
      ,[relo_code]
      ,[must_move]
      ,[mm_reason]
      ,[mm_desc]
      ,[mm_recom_action]
      ,[flight_risk]
      ,[fr_risk_lvl]
      ,[fr_reason]
      ,[fr_actions]
      ,[vp_potential]
      ,[vp_reason]
      ,[vp_next_step]
      ,[fy16_new_talent]
	  ,[m_init]
	  ,[company_start_date]
	  ,[former_ra_intern_coop]
	  ,[ra_ldp_grad]
	  ,[product_focus]
	  ,[suitability_ldshp_potential]
	  ,[next_dev_steps]
	  ,[ra_start_date]
	  ,[early_career_start]
	  ,[early_career_type]
	  ,[human_synergistics]
	  ,[human_synergistics_year] 
	  ,[term]
	  ,[status] 
	  ,[removal_reason] 
	  ,[removal_comments] 
  )
  VALUES(
  @uid ,
		@email ,
		@last_name ,
		@first_name ,
		@talent_code ,
		@position_title ,
		@competencies ,
		@cur_job_start_date ,
		@bus_group ,
		@hr_uid ,
		@bus_unit ,
		@manager_name,
		@next_poten_job ,
		@functional_lvl_npj ,
		@time_next_poten_job ,
		@next_succ_poten_job ,
		@time_next_succ_poten_job ,
		@rd_code ,
		@p_rd_code ,
		@willing_to_relo ,
		@padr_rating ,
		@diversity_code,
		@passport ,
		@country ,
		@relo_code ,
		@must_move ,
		@mm_reason ,
		@mm_desc ,
		@mm_recom_action ,
		@flight_risk ,
		@fr_risk_lvl ,
		@fr_reason,
		@fr_actions ,
		@vp_potential ,
		@vp_reason ,
		@vp_next_step ,
		@fy16_new_talent ,
		@m_init ,
		@company_start_date ,
		@former_ra_intern_coop,
		@ra_ldp_grad,
		@product_focus ,
		@suitability_ldshp_potential,
		@next_dev_steps,
		@ra_start_date ,
		@early_career_start ,
		@early_career_type,
		@human_synergistics,
		@human_synergistics_year,  
		@term ,
		@status,
		@removal_reason,
		@removal_comments
  )
  end


GO
/****** Object:  StoredProcedure [dbo].[sp_history_retrieve]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROC [dbo].[sp_history_retrieve]
	(
		@uid varchar(32) = NULL,
		@email varchar(128)= NULL,
		@last_name varchar(32)= NULL,
		@first_name varchar(32)= NULL,
		@talent_code varchar(64)= NULL,
		@position_title varchar(64)= NULL,
		@competencies varchar(32)= NULL,
		@cur_job_start_date_begin DATE = NULL,
		@cur_job_start_date_end DATE = NULL,
		@bus_group varchar(64)= NULL,
		@hr_uid varchar(32)= NULL,
		@bus_unit varchar(64)= NULL,
		@manager_name varchar(64)= NULL,
		@next_poten_job varchar(64)= NULL,
		@functional_lvl_npj varchar(32)= NULL,
		@time_next_poten_job varchar(32)= NULL,
		@next_succ_poten_job varchar(32)= NULL,
		@time_next_succ_poten_job varchar(32)= NULL,
		@rd_code varchar(32)= NULL,
		@p_rd_code varchar(32)= NULL,
		@willing_to_relo varchar(32)=NULL,
		@padr_rating varchar(32)=NULL,
		@diversity_code varchar(32)= NULL,
		@passport varchar(32)=NULL,
		@country varchar(32)=NULL,
		@relo_code varchar(32)=NULL,
		@must_move varchar(32)= NULL,
		@mm_reason varchar(32)= NULL,
		@mm_desc varchar(128)=NULL,
		@mm_recom_action varchar(128)=NULL,
		@flight_risk varchar(32)= NULL,
		@fr_risk_lvl varchar(32)= NULL,
		@fr_reason varchar(64)= NULL,
		@fr_actions varchar(64)=NULL,
		@vp_potential varchar(32)= NULL,
		@vp_reason varchar(64)= NULL,
		@vp_next_step varchar(64)= NULL,
		@fy16_new_talent varchar(32)= NULL,
		@m_init varchar(1)=NULL,
		@company_start_date_begin date = NULL,
		@company_start_date_end date = NULL,
		@former_ra_intern_coop varchar(10) = NULL,
		@ra_ldp_grad varchar(10) = NULL,
		@product_focus varchar(32) = NULL,
		@suitability_ldshp_potential varchar(32) = NULL,
		@next_dev_steps varchar(32) = NULL,
		@ra_start_date date = NULL,
		@early_career_start varchar(32) = NULL,
		@early_career_type varchar(32) = NULL,
		@human_synergistics varchar(32) = NULL,
		@human_synergistics_year varchar(32) = NULL,  
		@term varchar(32) = NULL,
		@status varchar(32) = NULL,
		@removal_reason varchar(max) = NULL 
	)
as

	SET @company_start_date_begin = ISNULL(@company_start_date_begin, '1-1-1900');
	SET @company_start_date_end = ISNULL(@company_start_date_end, GETDATE());
	SET @cur_job_start_date_begin = ISNULL(@cur_job_start_date_begin, '1-1-1900');
	SET @cur_job_start_date_end = ISNULL(@cur_job_start_date_end, GETDATE());
begin
SELECT [uid]
      ,[email]
      ,[last_name]
      ,[first_name]
      ,[talent_code]
      ,[position_title]
      ,[competencies]
      ,[cur_job_start_date]
      ,[bus_group]
      ,[hr_uid]
      ,[bus_unit]
      ,[manager_name]
      ,[next_poten_job]
      ,[functional_lvl_npj]
      ,[time_next_poten_job]
      ,[next_succ_poten_job]
      ,[time_next_succ_poten_job]
      ,[rd_code]
      ,[p_rd_code]
      ,[willing_to_relo]
      ,[padr_rating]
      ,[diversity_code]
      ,[passport]
      ,[country]
      ,[relo_code]
      ,[must_move]
      ,[mm_reason]
      ,[mm_desc]
      ,[mm_recom_action]
      ,[flight_risk]
      ,[fr_risk_lvl]
      ,[fr_reason]
      ,[fr_actions]
      ,[vp_potential]
      ,[vp_reason]
      ,[vp_next_step]
      ,[fy16_new_talent]
	  ,[m_init]
	  ,[company_start_date]
	  ,[former_ra_intern_coop]
	  ,[ra_ldp_grad]
	  ,[product_focus]
	  ,[suitability_ldshp_potential]
	  ,[next_dev_steps]
	  ,[ra_start_date]
	  ,[early_career_start]
	  ,[early_career_type]
	  ,[human_synergistics]
	  ,[human_synergistics_year] 
	  ,[term]
	  ,[status] 
	  ,[removal_reason]  
	  ,[removal_comments]
	  ,[photo_url]
  FROM [RTMS].[dbo].[history]
  WHERE ((@uid IS NULL OR uid LIKE '%' + @uid + '%') 
  AND (@email is NULL or email LIKE '%' + @email + '%')
  AND (@first_name is NULL or first_name LIKE '%' + @first_name + '%')
  AND (@last_name is NULL or last_name LIKE '%' + @last_name + '%')
  AND (@talent_code is NULL or talent_code LIKE '%' + @talent_code + '%')
  AND (@position_title is NULL or position_title LIKE '%' + @position_title + '%')
  AND (@competencies is NULL or competencies LIKE '%' + @competencies + '%')
  AND (cur_job_start_date BETWEEN @cur_job_start_date_begin AND @cur_job_start_date_end)
  AND (@bus_group is NULL or bus_group LIKE '%' + @bus_group + '%')
  AND (@hr_uid is NULL or hr_uid LIKE '%' + @hr_uid + '%')
  AND (@bus_unit is NULL or bus_unit LIKE '%' + @bus_unit + '%')
  AND (@manager_name is NULL or manager_name LIKE '%' + @manager_name + '%')
  AND (@next_poten_job is NULL or next_poten_job LIKE '%' + @next_poten_job + '%')
  AND (@functional_lvl_npj is NULL or functional_lvl_npj LIKE '%' + @functional_lvl_npj + '%')
  AND (@time_next_poten_job is NULL or time_next_poten_job LIKE '%' + @time_next_poten_job + '%')
  AND (@next_succ_poten_job is NULL or next_succ_poten_job LIKE '%' + @next_succ_poten_job + '%')
  AND (@time_next_succ_poten_job is NULL or time_next_succ_poten_job LIKE '%' + @time_next_succ_poten_job + '%')
  AND (@rd_code is NULL or rd_code LIKE '%' + @rd_code + '%')
  AND (@p_rd_code is NULL or p_rd_code LIKE '%' + @p_rd_code + '%')
  AND (@willing_to_relo is NULL or willing_to_relo LIKE '%' + @willing_to_relo + '%')
  AND (@padr_rating is NULL or padr_rating LIKE '%' + @padr_rating + '%')
  AND (@diversity_code is NULL or diversity_code LIKE '%' + @diversity_code + '%')
  AND (@passport is NULL or passport LIKE '%' + @passport + '%')
  AND (@country is NULL or country LIKE '%' + @country + '%')
  AND (@relo_code is NULL or relo_code LIKE '%' + @relo_code + '%')
  AND (@must_move is NULL or must_move LIKE '%' + @must_move + '%')
  AND (@mm_reason is NULL or mm_reason LIKE '%' + @mm_reason + '%')
  AND (@mm_desc is NULL or mm_desc LIKE '%' + @mm_reason + '%')
  AND (@mm_recom_action is NULL or mm_recom_action LIKE '%' + @mm_recom_action + '%')
  AND (@flight_risk is NULL or flight_risk LIKE '%' + @flight_risk + '%')
  AND (@fr_risk_lvl is NULL or fr_risk_lvl LIKE '%' + @fr_risk_lvl + '%')
  AND (@fr_reason is NULL or fr_reason LIKE '%' + @fr_reason + '%')
  AND (@fr_actions is NULL or fr_actions LIKE '%' + @fr_actions + '%')
  AND (@vp_potential is NULL or vp_potential LIKE '%' + @vp_potential + '%')
  AND (@vp_reason is NULL or vp_reason LIKE '%' + @vp_reason + '%')
  AND (@vp_next_step is NULL or vp_next_step LIKE '%' + @vp_next_step + '%')
  AND (@fy16_new_talent is NULL or fy16_new_talent LIKE '%' + @fy16_new_talent + '%')
  AND (@m_init is NULL or m_init LIKE '%' + @m_init + '%')
  AND (company_start_date BETWEEN @company_start_date_begin AND @company_start_date_end)
  AND (@former_ra_intern_coop is NULL or former_ra_intern_coop LIKE '%' + @former_ra_intern_coop + '%')
  AND (@ra_ldp_grad is NULL or ra_ldp_grad LIKE '%' + @ra_ldp_grad + '%')
  AND (@product_focus is NULL or product_focus LIKE '%' + @product_focus + '%')
  AND (@suitability_ldshp_potential is NULL or suitability_ldshp_potential LIKE '%' + @suitability_ldshp_potential + '%')
  AND (@next_dev_steps is NULL or next_dev_steps LIKE '%' + @next_dev_steps + '%')
  --AND (@ra_start_date is NULL or ra_start_date LIKE '%' + @ra_start_date + '%')
  AND (@early_career_start is NULL or early_career_start LIKE '%' + @early_career_start + '%')
  AND (@early_career_type is NULL or early_career_type LIKE '%' + @early_career_type + '%')
  AND (@human_synergistics is NULL or human_synergistics LIKE '%' + @human_synergistics + '%')
  AND (@human_synergistics_year is NULL or human_synergistics_year LIKE '%' + @human_synergistics_year + '%') 
  AND (@term is NULL or term LIKE '%' + @term + '%')
  AND (@status is NULL or status LIKE '%' + @status + '%')
  AND (@removal_reason is NULL or removal_reason LIKE '%' + @removal_reason + '%')  
  )
  end

GO
/****** Object:  StoredProcedure [dbo].[sp_history_retrieve_current]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROC [dbo].[sp_history_retrieve_current]
@term nvarchar(10)
as
 begin

	select * 
	from history
	where term = @term

end

--------------------------------------------------------------




GO
/****** Object:  StoredProcedure [dbo].[sp_human_synergistics]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_human_synergistics]
as
BEGIN
SELECT [code]
  FROM [RTMS].[Class_def].[human_synergistics]
  END

GO
/****** Object:  StoredProcedure [dbo].[sp_inser_willing_to_relo]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_inser_willing_to_relo]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.willing_to_relo
	VALUES(
			@entry
	)
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_active]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_active]
   (@entry varchar(3)
	)
AS
BEGIN
	INSERT INTO Class_def.active
	VALUES(
			@entry
	)
	
END


-----------------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_busgrp]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_busgrp]
   (@entry varchar(64)
	)
AS
BEGIN
	INSERT INTO Class_def.bus_grp
	VALUES(
			@entry
	)
	
END



------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_busunit]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_busunit]
   (@entry varchar(64)
	)
AS
BEGIN
	INSERT INTO Class_def.bus_unit
	VALUES(
			@entry
	)
	
END



---------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_competencies]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_competencies]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.competencies
	VALUES(
			@entry
	)
	
END


------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_diversity]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_diversity]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.diversity
	VALUES(
			@entry
	)
	
END


------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_early_career_start]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_early_career_start]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.early_career_start
	VALUES(
			@entry
	)
	
END


--------------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_early_career_type]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_early_career_type]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.early_career_type
	VALUES(
			@entry
	)
	
END


-------------------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_functional_lvl_npj]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_functional_lvl_npj]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.functional_lvl_npj
	VALUES(
			@entry
	)
	
END


-------------------------------------------------

GO
/****** Object:  StoredProcedure [dbo].[sp_insert_human_synergistics]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_human_synergistics]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.human_synergistics
	VALUES(
			@entry
	)
	
END


-----------------------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_mm_reason]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_mm_reason]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.mm_reason
	VALUES(
			@entry
	)
	
END


------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_p_rd_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_p_rd_code]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.p_rd_code
	VALUES(
			@entry
	)
	
END

-----------------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_padr_rating]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_padr_rating]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.padr_rating
	VALUES(
			@entry
	)
	
END


--------------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_rd_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_rd_code]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.rd_code
	VALUES(
			@entry
	)
	
END

-----------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_region]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_region]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.region
	VALUES(
			@entry
	)
	
END

-------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_relo_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_relo_code]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.relo_code
	VALUES(
			@entry
	)
	
END


-------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_relo_insert]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_relo_insert]
   (@entry varchar(64)
	)
AS
BEGIN
	INSERT INTO Class_def.relo_interest
	VALUES(
			@entry
	)
	
END

-----------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_risk_lvl]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_risk_lvl]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.risk_lvl
	VALUES(
			@entry
	)
	
END

---------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_stat]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_stat]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.stat
	VALUES(
			@entry
	)
	
END

--------------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_talent_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_talent_code]
   (@entry varchar(64)
	)
AS
BEGIN
	INSERT INTO Class_def.talent_code
	VALUES(
			@entry
	)
	
END

--------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_insert_time_nspj]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_insert_time_nspj]
   (@entry varchar(32)
	)
AS
BEGIN
	INSERT INTO Class_def.time_nspj
	VALUES(
			@entry
	)
	
END

--------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_mm_reason]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_mm_reason]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[mm_reason]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_p_rd_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_p_rd_code]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[p_rd_code]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_padr_rating]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_padr_rating]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[p_rd_code]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_rd_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_rd_code]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[rd_code]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_region]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_region]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[region]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_relo_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_relo_code]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[relo_code]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_relo_interest]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_relo_interest]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[relo_interest]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_reports]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_reports]
	-- Add the parameters for the stored procedure here
		@uid varchar(32),
		@fname varchar(32),
		@lname varchar(32),
		@email varchar(64),
		@talent_code varchar(32),
		@position_title varchar(32),
		@cur_job_start_date DATE,
		@bus_grp varchar (64),
		@bus_unit varchar(64),
		@diversity varchar(3),
		@next_poten_job varchar(32),
		@functional_lvl varchar(32),
		@time_next_poten_job varchar(32),
		@next_succ_poten_job varchar(32),
		@time_next_succ_poten_job varchar(32),
		@us_passport varchar(32),
		@country varchar(32),
		@hr_uid varchar(32),
		@m_init varchar(1),
		
		@must_move varchar(1),
		@mm_reason varchar(256),
		@mm_desc varchar(256),
		@mm_recom_action varchar(256),
		@flight_risk varchar(3),
		@fr_risk_lvl varchar(32),
		@fr_reason varchar(32),
		@fr_actions varchar(32),
		@vp_potential varchar(3),
		@vp_reason varchar(32),
		@vp_next_step varchar(32),
		@fy16_new_talent varchar(32),
		@active varchar(3),
		@company_start_date date,
		@former_ra_intern_coop varchar(32),
		@ra_ldp_grad varchar(32)
AS
	SET NOCOUNT ON;

	SELECT [uid]
      ,[email]
      ,[last_name]
      ,[first_name]
      ,[talent_code]
      ,[position_title]
      ,[cur_job_start_date]
      ,[bus_group]
      ,[hr_uid]
      ,[bus_unit]
      ,[next_poten_job]
      ,[functional_lvl_npj]
      ,[time_next_poten_job]
      ,[next_succ_poten_job]
      ,[time_next_succ_poten_job]
      ,[diversity_code]
      ,[passport]
      ,[country]
      ,[m_init]
	  ,[must_move]
	  ,[mm_reason]
	  ,[mm_desc]
	  ,[mm_recom_action],
		[flight_risk],
		[fr_risk_lvl],
		[fr_reason],
		[fr_actions],
		[vp_potential],
		[vp_reason],
		[vp_next_step],
		[fy16_new_talent],
		[active],
		[company_start_date],
		[former_ra_intern_coop],
		[ra_ldp_grad]
		FROM employees
		WHERE

	  (@uid IS NULL OR uid = @uid)
	  and (@email IS NULL OR email = @email)
	  and (@lname IS NULL OR last_name = @lname)
	  and (@fname IS NULL OR first_name = @fname)
	  and (@talent_code IS NULL OR talent_code = @talent_code)
	  and (@position_title IS NULL OR position_title = @position_title)
	  and (@cur_job_start_date IS NULL OR cur_job_start_date = @cur_job_start_date)
	  and (@bus_grp IS NULL OR bus_group = @bus_grp)
	  and (@hr_uid IS NULL OR hr_uid = @hr_uid)
	  and (@bus_unit IS NULL OR bus_unit = @bus_unit)
	  and (@next_poten_job IS NULL OR next_poten_job = @next_poten_job)
	  and (@functional_lvl IS NULL OR functional_lvl_npj = @functional_lvl)
	  and (@time_next_poten_job IS NULL OR time_next_poten_job = @time_next_poten_job)
	  and (@next_succ_poten_job IS NULL OR next_succ_poten_job = @next_succ_poten_job)
	  and (@time_next_succ_poten_job IS NULL OR time_next_succ_poten_job = @time_next_succ_poten_job)
	  and (@diversity IS NULL OR diversity_code = @diversity)
	  and (@us_passport IS NULL OR passport = @us_passport)
	  AND (@country IS NULL OR country = @country)
	  and (@m_init IS NULL OR m_init = @m_init)
	  and (@must_move IS NULL OR must_move = @must_move)
	  and (@mm_reason IS NULL OR mm_reason = @mm_reason)
	  and (@mm_desc IS NULL OR mm_desc = @mm_desc)
	  and (@mm_recom_action IS NULL OR mm_recom_action = @mm_recom_action)
	  and (@flight_risk IS NULL OR flight_risk = @flight_risk)
	  and (@fr_risk_lvl IS NULL OR fr_risk_lvl = @fr_risk_lvl)
	  and (@fr_reason IS NULL OR fr_reason = @fr_reason)
	  and (@fr_actions IS NULL OR fr_actions = @fr_actions)
	  and (@vp_potential IS NULL OR vp_potential = @vp_potential)
	  and (@vp_reason IS NULL OR vp_reason = @vp_reason)
	  and (@vp_next_step IS NULL OR vp_next_step = @vp_next_step)
	  and (@fy16_new_talent IS NULL OR fy16_new_talent = @fy16_new_talent)
	  and (@active IS NULL OR active = @active)
	  AND (@company_start_date IS NULL OR company_start_date = @company_start_date) --this is supposed to be a date object (can be nullable) but there shouldn't be an issue but I'm marking it just in case
	  and (@former_ra_intern_coop IS NULL OR former_ra_intern_coop = @former_ra_intern_coop)
	  AND (@ra_ldp_grad IS NULL OR ra_ldp_grad = @ra_ldp_grad)

GO
/****** Object:  StoredProcedure [dbo].[sp_risk_lvl]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_risk_lvl]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[risk_lvl]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_rp_removal]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[sp_rp_removal]
AS
BEGIN
	DECLARE @year int;
	DECLARE @date date;
	DECLARE @TERM varchar(32);
	DECLARE @target date;
	DECLARE @type varchar(32);
	SET @type = 'Removed';
	SET @year = DATEPART(YYYY,GETDATE());
	SET @target = DATEFROMPARTS(@year,'6','30');
	SET @date = GETDATE();
	IF GETDATE() <= @target
		SET @TERM = CONVERT(varchar(4),@year)+' Q1'
	ELSE
		SET @TERM = CONVERT(varchar(4),@year)+' Q2'

	SELECT * from history
	where term = @TERM AND status = @type

END
GO
/****** Object:  StoredProcedure [dbo].[sp_rp_turnover]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[sp_rp_turnover]
AS
BEGIN
	DECLARE @year int;
	DECLARE @date date;
	DECLARE @TERM varchar(32);
	DECLARE @target date;
	DECLARE @type varchar(32);
	SET @type = 'Turnover';
	SET @year = DATEPART(YYYY,GETDATE());
	SET @target = DATEFROMPARTS(@year,'6','30');
	SET @date = GETDATE();
	IF GETDATE() <= @target
		SET @TERM = CONVERT(varchar(4),@year)+' Q1'
	ELSE
		SET @TERM = CONVERT(varchar(4),@year)+' Q2'

	SELECT * from history
	where term = @TERM AND status = @type

END
GO
/****** Object:  StoredProcedure [dbo].[sp_stat]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_stat]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[stat]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_talent_code]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_talent_code]
as
BEGIN
SELECT [code]
  FROM [RTMS].[Class_def].[talent_code]
  END

GO
/****** Object:  StoredProcedure [dbo].[sp_time_npj]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_time_npj]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[time_npj]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_time_nspj]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_time_nspj]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[time_nspj]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_user_info]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_user_info] 
	@uid nvarchar(32)
AS
BEGIN
SELECT [uid]
      ,[department]
      ,[bus_unit]
      ,[date]
      ,[lvl_of_authority]
      ,[p_word]
	  ,[Email]
	  ,[EmailConfirmed]
	  ,[PhoneNumber]
	  ,[PhoneNumberConfirmed]
	  ,[PasswordHash]
	  ,[SecurityStamp]
	  ,[TwoFactorEnabled]
	  ,[LockoutEndDateUtc]
	  ,[LockoutEnabled]
	  ,[AccessFailedCount]
	  ,[UserName]
  FROM [RTMS].[dbo].[users]
  WHERE uid = @uid
END


-------------------------------------------------



GO
/****** Object:  StoredProcedure [dbo].[sp_users_delete]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_users_delete]
(
	@uid nvarchar(128)
)
AS
BEGIN
	DELETE FROM users
	WHERE uid = @uid
END
GO
/****** Object:  StoredProcedure [dbo].[sp_users_insert_update]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_users_insert_update]
	-- Add the parameters for the stored procedure here
		@uid nvarchar(128),
		@department nvarchar(MAX),
		@bus_unit nvarchar(MAX),
		@date DATE,
		@lvl_of_authority nvarchar(MAX),
		@p_word nvarchar(MAX),
		@Email nvarchar(MAX),
		@EmailConfirmed bit,
		@PhoneNumber nvarchar(MAX),
		@PhoneNumberConfirmed bit,
		@PasswordHash nvarchar(MAX),
		@SecurityStamp nvarchar(MAX),
		@TwoFactorEnabled bit,
		@LockoutEndDateUtc datetime,
		@LockoutEnabled bit,
		@AccessFailedCount int,
		@UserName nvarchar(MAX
)
AS
	SET NOCOUNT ON;

	IF EXISTS (SELECT 1 FROM [users] WHERE [uid]= @uid)
BEGIN
UPDATE users
SET [uid] = ISNULL (@uid, uid),
      [department] = ISNULL (@department, department),
      [bus_unit] = ISNULL (@bus_unit, bus_unit),
      [date] = ISNULL (@date, date),
      [lvl_of_authority] = ISNULL (@lvl_of_authority, lvl_of_authority),
      [p_word] = ISNULL (@p_word, p_word),
      [Email] = ISNULL (@email, email),
      [EmailConfirmed] = ISNULL (@EmailConfirmed, EmailConfirmed),
      [PhoneNumber] = ISNULL (@PhoneNumber, PhoneNumber),
      [PhoneNumberConfirmed] = ISNULL (@PhoneNumberConfirmed, PhoneNumberConfirmed),
      [PasswordHash] = ISNULL (@PasswordHash, PasswordHash),
      [SecurityStamp] = ISNULL (@SecurityStamp, SecurityStamp),
      [TwoFactorEnabled] = ISNULL (@TwoFactorEnabled, TwoFactorEnabled),
      [LockoutEndDateUtc] = ISNULL (@LockoutEndDateUtc, LockoutEndDateUtc),
      [LockoutEnabled] = ISNULL (@LockoutEnabled, LockoutEnabled),
      [AccessFailedCount] = ISNULL (@AccessFailedCount, AccessFailedCount),
      [UserName] = ISNULL (@UserName, UserName)
	WHERE uid = @uid
END
ELSE
BEGIN
	INSERT INTO users
     ( [uid]
      ,[department]
      ,[bus_unit]
      ,[date]
      ,[lvl_of_authority]
      ,[p_word]
      ,[Email]
      ,[EmailConfirmed]
      ,[PhoneNumber]
      ,[PhoneNumberConfirmed]
      ,[PasswordHash]
      ,[SecurityStamp]
      ,[TwoFactorEnabled]
      ,[LockoutEndDateUtc]
      ,[LockoutEnabled]
      ,[AccessFailedCount]
      ,[UserName] )
     
	  VALUES(@uid,@department,@bus_unit,@date,@lvl_of_authority,@p_word,@Email,@EmailConfirmed,@PhoneNumber,@PhoneNumberConfirmed,@PasswordHash,@SecurityStamp,@TwoFactorEnabled,@LockoutEndDateUtc,@LockoutEnabled,@AccessFailedCount,@UserName)

	  end



--------------------------------------------------


GO
/****** Object:  StoredProcedure [dbo].[sp_users_retrieve]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROC [dbo].[sp_users_retrieve]
	(
	@Id varchar(32) = NULL,
	@Email nvarchar(max) = NULL,
	@EmailConfirmed bit = NULL,
	@PhoneNumber nvarchar(max) = NULL,
	@PhoneNumberConfirmed bit = NULL,
	@PasswordHash nvarchar(max) = NULL,
	@SecurityStamp nvarchar(max) = NULL,
	@TwoFactorEnabled bit = NULL,
	@LockoutEndDateUtc datetime = NULL,
	@LockoutEnabled bit = NULL, 
	@AccessFailedCount int = NULL,
	@UserName nvarchar(max) = NULL
	)
as
begin
SELECT [Id]
	  ,[Email]
	  ,[EmailConfirmed]
	  ,[PhoneNumber]
	  ,[PhoneNumberConfirmed]
	  ,[PasswordHash]
	  ,[SecurityStamp]
	  ,[TwoFactorEnabled]
	  ,[LockoutEndDateUtc]
	  ,[LockoutEnabled]
	  ,[AccessFailedCount]
	  ,[UserName]
  FROM [RTMS].[dbo].[AspNetUsers]
  WHERE ((@Id IS NULL OR Id = @Id) 
  AND (@Email is NULL or Email LIKE '%' + @Email+ '%')
  AND (@EmailConfirmed is NULL or EmailConfirmed = @EmailConfirmed)
  AND (@PhoneNumber is NULL or PhoneNumber LIKE '%' + @PhoneNumber+ '%')
  AND (@PhoneNumberConfirmed is NULL or PhoneNumberConfirmed = @PhoneNumberConfirmed)
  AND (@PasswordHash is NULL or PasswordHash LIKE '%' + @PasswordHash+ '%')
  AND (@SecurityStamp is NULL or SecurityStamp LIKE '%' + @SecurityStamp + '%')
  AND (@TwoFactorEnabled is NULL or TwoFactorEnabled = @TwoFactorEnabled)
  AND (@LockoutEndDateUtc is NULL or @LockoutEndDateUtc = @LockoutEndDateUtc)
  AND (@LockoutEnabled is NULL or LockoutEnabled = @LockoutEnabled)
  AND (@AccessFailedCount is NULL or AccessFailedCount = @AccessFailedCount)
  AND (@UserName is NULL or UserName LIKE '%' + @UserName + '%')
  )
  end

  ----------------------------------------



GO
/****** Object:  StoredProcedure [dbo].[sp_willing_to_relo]    Script Date: 10/12/2017 10:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[sp_willing_to_relo]
as
BEGIN
	SELECT [code]
    FROM [RTMS].[Class_def].[willing_to_relo]
END
GO
USE [master]
GO
ALTER DATABASE [RTMS] SET  READ_WRITE 
GO
