USE [cpos]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Permission] [ntext] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Value] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](45) NULL,
	[Description] [varchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[Active] [bit] NULL,
	[LastUpdated] [date] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DailySales]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailySales](
	[ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Total] [decimal](12, 2) NULL,
 CONSTRAINT [PK_DailySales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](130) NULL,
	[PhoneNumber] [nvarchar](32) NULL,
	[FaxNumber] [nvarchar](32) NULL,
	[Address1] [nvarchar](65) NULL,
	[Address2] [nvarchar](65) NULL,
	[City] [nvarchar](65) NULL,
	[State] [nvarchar](65) NULL,
	[ZipCode] [nvarchar](16) NULL,
	[Country] [nvarchar](130) NULL,
	[PriceLevel] [smallint] NULL,
	[Discount] [float] NULL,
	[CreditLimit] [decimal](12, 2) NULL,
	[AccountBalance] [decimal](12, 2) NULL,
	[TotalSales] [decimal](12, 2) NULL,
	[AllowCredit] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[LastVisitDate] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[City] [nvarchar](65) NOT NULL,
	[State] [nvarchar](65) NULL,
	[Address1] [nvarchar](65) NOT NULL,
	[Address2] [nvarchar](65) NOT NULL,
	[ZipCode] [nvarchar](16) NOT NULL,
	[EmailAddress] [nvarchar](130) NULL,
	[WebPageAddress] [nvarchar](130) NULL,
	[SupplierCode] [nvarchar](50) NULL,
	[Country] [nvarchar](128) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[TaxNumber] [nvarchar](20) NOT NULL,
	[PhoneNumber] [nvarchar](32) NOT NULL,
	[Active] [bit] NOT NULL,
	[CompanyName] [nvarchar](128) NULL,
	[FaxNumber] [nvarchar](32) NOT NULL,
	[Notes] [ntext] NULL,
	[MinimumOrderAmmount] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoreNumber] [int] NOT NULL,
	[Name] [nvarchar](130) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Address1] [nvarchar](130) NOT NULL,
	[Address2] [nvarchar](130) NOT NULL,
	[City] [nvarchar](65) NOT NULL,
	[State] [nvarchar](65) NULL,
	[ZipCode] [nvarchar](16) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdates] [datetime] NOT NULL,
	[PhoneNumber] [nvarchar](32) NOT NULL,
	[EmailAddress] [nvarchar](130) NULL,
	[WebPage] [nvarchar](130) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissionMap]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissionMap](
	[RoleID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL,
 CONSTRAINT [PK_RolePermissionMap] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[PermissionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[ID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[Total] [decimal](12, 2) NULL,
	[SalesTax] [decimal](12, 2) NULL,
	[EmployeeID] [int] NULL,
	[Notes] [nvarchar](255) NULL,
	[CreatedTime] [datetime] NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[EmployeeID] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[LastLogin] [datetime] NULL,
	[Active] [bit] NULL,
	[EmailAddress] [nvarchar](255) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Telephone] [nvarchar](30) NULL,
	[PasswordReset] [bit] NULL,
	[Address1] [nvarchar](130) NULL,
	[Address2] [nvarchar](130) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] NOT NULL,
	[Name] [varchar](45) NULL,
	[Description] [varchar](255) NULL,
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdate] [date] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [int] NOT NULL,
	[Name] [varchar](30) NULL,
	[BuyPrice] [decimal](12, 2) NULL,
	[SellPrice] [decimal](12, 2) NULL,
	[Description] [varchar](255) NULL,
	[FoodStampable] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[LastReceived] [datetime] NULL,
	[Image] [image] NULL,
	[Active] [bit] NULL,
	[Barcode] [varchar](45) NULL,
	[Reference] [int] NULL,
	[Weight] [float] NULL,
	[Weighed] [bit] NOT NULL,
	[PrefferredSupplierID] [int] NULL,
	[CategoryID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[Discountable] [bit] NULL,
	[SalePrice] [decimal](12, 2) NULL,
	[DiscountPercent] [float] NULL,
	[SaleStartDate] [date] NULL,
	[SaleEndDate] [date] NULL,
	[OnSale] [bit] NOT NULL,
	[TaxID] [int] NULL,
	[Taxable] [bit] NOT NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionDetail]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionDetail](
	[ID] [int] NOT NULL,
	[Cost] [decimal](12, 2) NULL,
	[SalePrice] [decimal](12, 2) NULL,
	[TransactionID] [int] NULL,
	[ItemID] [int] NULL,
	[Quantity] [float] NULL,
	[Taxable] [bit] NULL,
	[SalesTax] [decimal](12, 2) NULL,
 CONSTRAINT [PK_TransactionDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierList]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
 CONSTRAINT [PK_SupplierList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kit]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NOT NULL,
	[Quantity] [float] NULL,
	[Price] [decimal](12, 2) NULL,
	[Description] [nvarchar](255) NULL,
	[DateCreated] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
 CONSTRAINT [PK_Kit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitEntry]    Script Date: 08/06/2011 15:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitEntry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KitID] [int] NULL,
	[Cost] [decimal](12, 2) NULL,
	[Price] [decimal](12, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[Quantity] [float] NULL,
 CONSTRAINT [PK_KitEntry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Item_BuyPrice]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF_Item_BuyPrice]  DEFAULT ((0.00)) FOR [BuyPrice]
GO
/****** Object:  Default [DF_Item_SellPrice]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF_Item_SellPrice]  DEFAULT ((0.00)) FOR [SellPrice]
GO
/****** Object:  Default [DF_Item_OnSale]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF_Item_OnSale]  DEFAULT ((0)) FOR [OnSale]
GO
/****** Object:  ForeignKey [FK_Category_Department]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Department]
GO
/****** Object:  ForeignKey [FK_Item_Category]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Category]
GO
/****** Object:  ForeignKey [FK_Item_Department]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Department]
GO
/****** Object:  ForeignKey [FK_Kit_Item]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[Kit]  WITH CHECK ADD  CONSTRAINT [FK_Kit_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[Kit] CHECK CONSTRAINT [FK_Kit_Item]
GO
/****** Object:  ForeignKey [FK_KitEntry_Kit]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[KitEntry]  WITH CHECK ADD  CONSTRAINT [FK_KitEntry_Kit] FOREIGN KEY([KitID])
REFERENCES [dbo].[Kit] ([ID])
GO
ALTER TABLE [dbo].[KitEntry] CHECK CONSTRAINT [FK_KitEntry_Kit]
GO
/****** Object:  ForeignKey [FK_RolePermissionMap_Permission]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[RolePermissionMap]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissionMap_Permission] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permission] ([ID])
GO
ALTER TABLE [dbo].[RolePermissionMap] CHECK CONSTRAINT [FK_RolePermissionMap_Permission]
GO
/****** Object:  ForeignKey [FK_RolePermissionMap_Role]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[RolePermissionMap]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissionMap_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[RolePermissionMap] CHECK CONSTRAINT [FK_RolePermissionMap_Role]
GO
/****** Object:  ForeignKey [FK_SupplierList_Item]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[SupplierList]  WITH CHECK ADD  CONSTRAINT [FK_SupplierList_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[SupplierList] CHECK CONSTRAINT [FK_SupplierList_Item]
GO
/****** Object:  ForeignKey [FK_SupplierList_Supplier]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[SupplierList]  WITH CHECK ADD  CONSTRAINT [FK_SupplierList_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[SupplierList] CHECK CONSTRAINT [FK_SupplierList_Supplier]
GO
/****** Object:  ForeignKey [FK_Transaction_Customer]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Customer]
GO
/****** Object:  ForeignKey [FK_TransactionDetail_Item]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_Item]
GO
/****** Object:  ForeignKey [FK_TransactionDetail_Transaction]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_Transaction] FOREIGN KEY([TransactionID])
REFERENCES [dbo].[Transaction] ([ID])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_Transaction]
GO
/****** Object:  ForeignKey [FK_User_Employee]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Employee]
GO
/****** Object:  ForeignKey [FK_User_Role]    Script Date: 08/06/2011 15:57:46 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
