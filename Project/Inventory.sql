USE [master]
GO
/****** Object:  Database [Inventory]    Script Date: 9/28/2024 2:47:24 PM ******/
CREATE DATABASE [Inventory]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inventory', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Inventory.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Inventory_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Inventory_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Inventory] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inventory].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inventory] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Inventory] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Inventory] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Inventory] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Inventory] SET ARITHABORT OFF 
GO
ALTER DATABASE [Inventory] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Inventory] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Inventory] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Inventory] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Inventory] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Inventory] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Inventory] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Inventory] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Inventory] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Inventory] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Inventory] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Inventory] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Inventory] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Inventory] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Inventory] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Inventory] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Inventory] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Inventory] SET RECOVERY FULL 
GO
ALTER DATABASE [Inventory] SET  MULTI_USER 
GO
ALTER DATABASE [Inventory] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Inventory] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Inventory] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Inventory] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Inventory] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Inventory] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Inventory', N'ON'
GO
ALTER DATABASE [Inventory] SET QUERY_STORE = OFF
GO
USE [Inventory]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 9/28/2024 2:47:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brandID] [nchar](20) NOT NULL,
	[brandName] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 9/28/2024 2:47:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [nchar](25) NOT NULL,
	[categoryName] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 9/28/2024 2:47:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[itemID] [nchar](20) NOT NULL,
	[categoryID] [nchar](20) NOT NULL,
	[brandID] [nchar](20) NOT NULL,
	[locationID] [nchar](20) NOT NULL,
	[itemName] [nchar](20) NOT NULL,
	[itemPrice] [money] NOT NULL,
	[itemQuantity] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 9/28/2024 2:47:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[locationID] [nchar](15) NOT NULL,
	[locationName] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[locationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 9/28/2024 2:47:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[userID] [nchar](30) NOT NULL,
	[firstName] [nchar](20) NOT NULL,
	[lastName] [nchar](30) NOT NULL,
	[phoneNumber] [nchar](20) NOT NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (N'BodyCraft           ', N'BodyCraft Fitness   ')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (N'Horizon             ', N'Horizon Fitness     ')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (N'LifeFitness         ', N'LifeFitness LLC     ')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (N'LifeSpan            ', N'LifeSpan Fitness    ')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (N'Matrix              ', N'Matrix Fitness      ')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (N'Octane              ', N'Octane Fitness      ')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (N'Pacemater           ', N'PCE Fitness         ')
INSERT [dbo].[Brand] ([brandID], [brandName]) VALUES (N'Vision              ', N'Vision Fitness      ')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'Console                  ', N'CNSL      ')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'DriveMotor               ', N'DRM       ')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'InclineMotor             ', N'INCLMTR   ')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'LowerWireHarness         ', N'LWH       ')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'MotorControlBoard        ', N'MCB       ')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'Switch                   ', N'SWCH      ')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'UpperControlBoard        ', N'UCB       ')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'UpperWireHarness         ', N'UWH       ')
GO
INSERT [dbo].[Item] ([itemID], [categoryID], [brandID], [locationID], [itemName], [itemPrice], [itemQuantity]) VALUES (N'1033221420          ', N'InclineMotor        ', N'Vision              ', N'Bin2-1-2-1          ', N'7600 Incline Motor  ', 350.0000, N'7                   ')
INSERT [dbo].[Item] ([itemID], [categoryID], [brandID], [locationID], [itemName], [itemPrice], [itemQuantity]) VALUES (N'103326-001          ', N'Switch              ', N'Octane              ', N'Bin1-2-3-1          ', N'3700 On/OffSwitch   ', 35.0000, N'22                  ')
INSERT [dbo].[Item] ([itemID], [categoryID], [brandID], [locationID], [itemName], [itemPrice], [itemQuantity]) VALUES (N'1033260010          ', N'DriveMotor          ', N'Horizon             ', N'Bin1-1-2-1          ', N'9700 DriveMotor     ', 550.0000, N'12                  ')
INSERT [dbo].[Item] ([itemID], [categoryID], [brandID], [locationID], [itemName], [itemPrice], [itemQuantity]) VALUES (N'1066223340          ', N'UpperControlBoard   ', N'BodyCraft           ', N'Bin1-3-4-1          ', N'RW5500 UpperBoard   ', 300.0000, N'10                  ')
INSERT [dbo].[Item] ([itemID], [categoryID], [brandID], [locationID], [itemName], [itemPrice], [itemQuantity]) VALUES (N'7662540100          ', N'UpperWireHarness    ', N'LifeSpan            ', N'Bin2-2-3-1          ', N'50 UpperWireHarness ', 15.0000, N'35                  ')
INSERT [dbo].[Item] ([itemID], [categoryID], [brandID], [locationID], [itemName], [itemPrice], [itemQuantity]) VALUES (N'7662540200          ', N'LowerWireHarness    ', N'Pacemaster          ', N'Bin3-2-1-1          ', N'45 LowerWireHarness ', 18.0000, N'40                  ')
INSERT [dbo].[Item] ([itemID], [categoryID], [brandID], [locationID], [itemName], [itemPrice], [itemQuantity]) VALUES (N'7965342201          ', N'Console             ', N'LifeFitness         ', N'Bin1-5-6-1          ', N'X3 Console          ', 900.0000, N'20                  ')
INSERT [dbo].[Item] ([itemID], [categoryID], [brandID], [locationID], [itemName], [itemPrice], [itemQuantity]) VALUES (N'80326650            ', N'MotorControlBoard   ', N'Matrix              ', N'Bin1-4-5-1          ', N'T3 MotorControlBoard', 750.0000, N'18                  ')
GO
INSERT [dbo].[Location] ([locationID], [locationName]) VALUES (N'Bin1-1-2-1     ', N'Shelf1A        ')
INSERT [dbo].[Location] ([locationID], [locationName]) VALUES (N'Bin1-2-3-1     ', N'Shelf2B        ')
INSERT [dbo].[Location] ([locationID], [locationName]) VALUES (N'Bin1-3-4-1     ', N'Shelf3C        ')
INSERT [dbo].[Location] ([locationID], [locationName]) VALUES (N'Bin1-4-5-1     ', N'Shelf4B        ')
INSERT [dbo].[Location] ([locationID], [locationName]) VALUES (N'Bin1-5-6-1     ', N'Shelf5C        ')
INSERT [dbo].[Location] ([locationID], [locationName]) VALUES (N'Bin2-1-2-1     ', N'Shelf6A        ')
INSERT [dbo].[Location] ([locationID], [locationName]) VALUES (N'Bin2-2-3-1     ', N'Shelf7B        ')
INSERT [dbo].[Location] ([locationID], [locationName]) VALUES (N'Bin3-2-1-1     ', N'Shelf8A        ')
GO
INSERT [dbo].[UserProfile] ([userID], [firstName], [lastName], [phoneNumber]) VALUES (N'2287                          ', N'Jim                 ', N'Peterson                      ', N'952-224-1262        ')
INSERT [dbo].[UserProfile] ([userID], [firstName], [lastName], [phoneNumber]) VALUES (N'4438                          ', N'Dan                 ', N'Bowman                        ', N'952-224-1208        ')
INSERT [dbo].[UserProfile] ([userID], [firstName], [lastName], [phoneNumber]) VALUES (N'4466                          ', N'Cynthia             ', N'Anderson                      ', N'952-224-1200        ')
INSERT [dbo].[UserProfile] ([userID], [firstName], [lastName], [phoneNumber]) VALUES (N'4478                          ', N'Richard             ', N'Tuma                          ', N'952-224-1205        ')
INSERT [dbo].[UserProfile] ([userID], [firstName], [lastName], [phoneNumber]) VALUES (N'6565                          ', N'Matt                ', N'Nelson                        ', N'952-224-1222        ')
INSERT [dbo].[UserProfile] ([userID], [firstName], [lastName], [phoneNumber]) VALUES (N'788                           ', N'Chris               ', N'Holt                          ', N'952-224-1201        ')
INSERT [dbo].[UserProfile] ([userID], [firstName], [lastName], [phoneNumber]) VALUES (N'796                           ', N'Richard             ', N'Braaten                       ', N'952-224-1206        ')
INSERT [dbo].[UserProfile] ([userID], [firstName], [lastName], [phoneNumber]) VALUES (N'8568                          ', N'Duane               ', N'Dresser                       ', N'952-224-1210        ')
GO
USE [master]
GO
ALTER DATABASE [Inventory] SET  READ_WRITE 
GO
