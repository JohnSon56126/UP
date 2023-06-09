CREATE DATABASE [Trade]
GO
USE [Trade]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 20.04.2023 12:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[Composition] [nvarchar](60) NOT NULL,
	[DateOrder] [date] NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[PointOfIssueID] [int] NULL,
	[UserID] [int] NULL,
	[Code] [int] NULL,
	[Status] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderOfProduct]    Script Date: 20.04.2023 12:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderOfProduct](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointOfIssue]    Script Date: 20.04.2023 12:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointOfIssue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[City] [nvarchar](30) NULL,
	[Street] [nvarchar](30) NULL,
	[NumberStreet] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.04.2023 12:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArticleNumber] [nvarchar](50) NOT NULL,
	[Name] [char](100) NOT NULL,
	[UnitOfMeasurement] [char](2) NOT NULL,
	[Cost] [int] NOT NULL,
	[DiscountAmount] [int] NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Supplier] [nvarchar](50) NOT NULL,
	[Category] [char](60) NOT NULL,
	[CurrentDiscount] [int] NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Photo] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 20.04.2023 12:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [char](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 20.04.2023 12:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[LastName] [char](50) NOT NULL,
	[FirstName] [char](50) NOT NULL,
	[SecondName] [char](50) NULL,
	[Login] [nvarchar](40) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PointOfIssue] ON 

INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (1, 344288, N'г. Сыктывкар', N'ул. Чехова', 1)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (2, 614164, N'г.Сыктывкар', N'  ул. Степная', 30)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (3, 394242, N'г. Сыктывкар', N'ул. Коммунистическая', 43)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (4, 660540, N'г. Сыктывкар', N'ул. Солнечная', 25)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (5, 125837, N'г. Сыктывкар', N'ул. Шоссейная', 40)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (6, 125703, N'г. Сыктывкар', N'ул. Партизанская', 49)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (7, 625283, N'г. Сыктывкар', N'ул. Победы', 46)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (8, 614611, N'г. Сыктывкар', N'ул. Молодежная', 50)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (9, 454311, N'г.Сыктывкар', N'ул. Новая', 19)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (10, 660007, N'г.Сыктывкар', N'ул. Октябрьская', 19)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (11, 603036, N'г. Сыктывкар', N'ул. Садовая', 4)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (12, 450983, N'г.Сыктывкар', N'ул. Комсомольская', 26)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (13, 394782, N'г. Сыктывкар', N'ул. Чехова', 3)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (14, 603002, N'г. Сыктывкар', N'ул. Дзержинского', 28)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (15, 450558, N'г. Сыктывкар', N'ул. Набережная', 30)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (16, 394060, N'г.Сыктывкар', N'ул. Фрунзе', 43)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (17, 410661, N'г. Сыктывкар', N'ул. Школьная', 50)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (18, 625590, N'г. Сыктывкар', N'ул. Коммунистическая', 20)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (19, 625683, N'г. Сыктывкар', N'ул. 8 Марта', 12)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (20, 400562, N'г. Сыктывкар', N'ул. Зеленая', 32)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (21, 614510, N'г. Сыктывкар', N'ул. Маяковского', 47)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (22, 410542, N'г. Сыктывкар', N'ул. Светлая', 46)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (23, 620839, N'г. Сыктывкар', N'ул. Цветочная', 8)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (24, 443890, N'г. Сыктывкар', N'ул. Коммунистическая', 1)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (25, 603379, N'г. Сыктывкар', N'ул. Спортивная', 46)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (26, 603721, N'г. Сыктывкар', N'ул. Гоголя', 41)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (27, 410172, N'г. Сыктывкар', N'ул. Северная', 13)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (28, 420151, N'г. Сыктывкар', N'ул. Вишневая', 32)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (29, 125061, N'г. Сыктывкар', N'ул. Подгорная', 8)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (30, 630370, N'г. Сыктывкар', N'ул. Шоссейная', 24)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (31, 614753, N'г. Сыктывкар', N'ул. Полевая', 35)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (32, 426030, N'г. Сыктывкар', N'ул. Маяковского', 44)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (33, 450375, N'г. Сыктывкар', N'ул. Клубная', 44)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (34, 625560, N'г. Сыктывкар', N'ул. Некрасова', 12)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (35, 630201, N'г. Сыктывкар', N'ул. Комсомольская', 17)
INSERT [dbo].[PointOfIssue] ([ID], [Number], [City], [Street], [NumberStreet]) VALUES (36, 190949, N'г. Сыктывкар', N'ул. Мичурина', 26)
SET IDENTITY_INSERT [dbo].[PointOfIssue] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (1, N'PMEZMH', N'Цемент                                                                                              ', N'шт', 440, 10, N'М500', N'М500', N'Общестроительные материалы                                  ', 8, 34, N'Цемент Евроцемент М500 Д0 ЦЕМ I 42,5 50 кг', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (2, N'BPV4MM', N'Пленка техническая                                                                                  ', N'шт', 8, 13, N'Изостронг', N'Изостронг', N'Общестроительные материалы                                  ', 8, 2, N'Пленка техническая полиэтиленовая Изостронг 60 мк 3 м рукав 1,5 м, пог.м', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (3, N'JVL42J', N'Пленка техническая                                                                                  ', N'шт', 13, 1, N'Изостронг', N'Изостронг', N'Общестроительные материалы                                  ', 4, 34, N'Пленка техническая полиэтиленовая Изостронг 100 мк 3 м рукав 1,5 м, пог.м', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (4, N'F895RB', N'Песок строительный                                                                                  ', N'шт', 102, 17, N'Knauf', N'Knauf', N'Общестроительные материалы                                  ', 6, 7, N'Песок строительный 50 кг', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (5, N'3XBOTN', N'Керамзит фракция                                                                                    ', N'шт', 110, 14, N'MixMaster', N'MixMaster', N'Общестроительные материалы                                  ', 5, 21, N'Керамзит фракция 10-20 мм 0,05 куб.м', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (6, N'3L7RCZ', N'Газобетон                                                                                           ', N'шт', 7400, 7, N'ЛСР', N'ЛСР', N'Стеновые и фасадные материалы                               ', 2, 20, N'Газобетон ЛСР 100х250х625 мм D400', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (7, N'S72AM3', N'Пазогребневая плита                                                                                 ', N'шт', 500, 9, N'ВОЛМА', N'ВОЛМА', N'Стеновые и фасадные материалы                               ', 5, 35, N'Пазогребневая плита ВОЛМА Гидро 667х500х80 мм полнотелая', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (8, N'2G3280', N'Угол наружный                                                                                       ', N'шт', 795, 16, N'Vinylon', N'Vinylon', N'Стеновые и фасадные материалы                               ', 9, 20, N'Угол наружный Vinylon 3050 мм серо-голубой', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (9, N'MIO8YV', N'Кирпич                                                                                              ', N'шт', 30, 9, N'ВОЛМА', N'ВОЛМА', N'Стеновые и фасадные материалы                               ', 9, 31, N'Кирпич рядовой Боровичи полнотелый М150 250х120х65 мм 1NF', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (10, N'UER2QD', N'Скоба для пазогребневой плиты                                                                       ', N'шт', 25, 20, N'Knauf', N'Knauf', N'Стеновые и фасадные материалы                               ', 8, 27, N'Скоба для пазогребневой плиты Knauf С1 120х100 мм', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (11, N'ZR70B4', N'Кирпич                                                                                              ', N'шт', 16, 3, N'Павловский завод ', N'Павловский завод ', N'Стеновые и фасадные материалы                               ', 3, 26, N'Кирпич рядовой силикатный Павловский завод полнотелый М200 250х120х65 мм 1NF', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (12, N'LPDDM4', N'Штукатурка гипсовая                                                                                 ', N'шт', 500, 17, N'Knauf', N'Knauf', N'Сухие строительные смеси и гидроизоляция                    ', 6, 38, N'Штукатурка гипсовая Knauf Ротбанд 30 кг', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (13, N'LQ48MW', N'Штукатурка гипсовая                                                                                 ', N'шт', 462, 16, N'Weber', N'Weber', N'Сухие строительные смеси и гидроизоляция                    ', 6, 33, N'Штукатурка гипсовая Knauf МП-75 машинная 30 кг', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (14, N'O43COU', N'Шпаклевка                                                                                           ', N'шт', 750, 9, N'ВОЛМА', N'ВОЛМА', N'Сухие строительные смеси и гидроизоляция                    ', 1, 16, N'Шпаклевка полимерная Weber.vetonit LR + для сухих помещений белая 20 кг', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (15, N'M26EXW', N'Клей для плитки, керамогранита и камня                                                              ', N'шт', 340, 8, N'Knauf', N'Knauf', N'Сухие строительные смеси и гидроизоляция                    ', 8, 2, N'Клей для плитки, керамогранита и камня Крепс Усиленный серый (класс С1) 25 кг', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (16, N'K0YACK', N'Смесь цементно-песчаная                                                                             ', N'шт', 160, 9, N'MixMaster', N'MixMaster', N'Сухие строительные смеси и гидроизоляция                    ', 8, 19, N'Смесь цементно-песчаная (ЦПС) 300 по ТУ MixMaster Универсал 25 кг', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (17, N'ASPXSG', N'Ровнитель                                                                                           ', N'шт', 711, 17, N'Weber', N'Weber', N'Сухие строительные смеси и гидроизоляция                    ', 10, 20, N'Ровнитель (наливной пол) финишный Weber.vetonit 4100 самовыравнивающийся высокопрочный 20 кг', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (18, N'ZKQ5FF', N'Лезвие для ножа                                                                                     ', N'шт', 65, 13, N'Hesler', N'Hesler', N'Ручной инструмент                                           ', 6, 6, N'Лезвие для ножа Hesler 18 мм прямое (10 шт.)', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (19, N'4WZEOT', N'Лезвие для ножа                                                                                     ', N'шт', 110, 2, N'Armero', N'Armero', N'Ручной инструмент                                           ', 6, 17, N'Лезвие для ножа Armero 18 мм прямое (10 шт.)', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (20, N'4JR1HN', N'Шпатель                                                                                             ', N'шт', 26, 3, N'Hesler', N'Hesler', N'Ручной инструмент                                           ', 6, 7, N'Шпатель малярный 100 мм с пластиковой ручкой', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (21, N'Z3XFSP', N'Нож строительный                                                                                    ', N'шт', 63, 19, N'Hesler', N'Hesler', N'Ручной инструмент                                           ', 8, 5, N'Нож строительный Hesler 18 мм с ломающимся лезвием пластиковый корпус', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (22, N'I6MH89', N'Валик                                                                                               ', N'шт', 326, 12, N'Wenzo Roma', N'Wenzo Roma', N'Ручной инструмент                                           ', 6, 3, N'Валик Wenzo Roma полиакрил 250 мм ворс 18 мм для красок грунтов и антисептиков на водной основе с рукояткой', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (23, N'83M5ME', N'Кисть                                                                                               ', N'шт', 122, 16, N'Armero', N'Armero', N'Ручной инструмент                                           ', 9, 26, N'Кисть плоская смешанная щетина 100х12 мм для красок и антисептиков на водной основе', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (24, N'61PGH3', N'Очки защитные                                                                                       ', N'шт', 184, 2, N'KILIMGRIN', N'KILIMGRIN', N'Защита лица, глаз, головы                                   ', 6, 25, N'Очки защитные Delta Plus KILIMANDJARO (KILIMGRIN) открытые с прозрачными линзами', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (25, N'GN6ICZ', N'Каска защитная                                                                                      ', N'шт', 154, 10, N'Исток', N'Исток', N'Защита лица, глаз, головы                                   ', 6, 8, N'Каска защитная Исток (КАС001О) оранжевая', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (26, N'Z3LO0U', N'Очки защитные                                                                                       ', N'шт', 228, 19, N'RUIZ', N'RUIZ', N'Защита лица, глаз, головы                                   ', 9, 11, N'Очки защитные Delta Plus RUIZ (RUIZ1VI) закрытые с прозрачными линзами', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (27, N'QHNOKR', N'Маска защитная                                                                                      ', N'шт', 251, 6, N'Исток', N'Исток', N'Защита лица, глаз, головы                                   ', 2, 22, N'Маска защитная Исток (ЩИТ001) ударопрочная и термостойкая', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (28, N'EQ6RKO', N'Подшлемник                                                                                          ', N'шт', 36, 17, N'Husqvarna', N'Husqvarna', N'Защита лица, глаз, головы                                   ', 3, 22, N'Подшлемник для каски одноразовый', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (29, N'81F1WG', N'Каска защитная                                                                                      ', N'шт', 1500, 1, N'Delta', N'Delta', N'Защита лица, глаз, головы                                   ', 2, 13, N'Каска защитная Delta Plus BASEBALL DIAMOND V UP (DIAM5UPBCFLBS) белая', NULL)
INSERT [dbo].[Product] ([ID], [ArticleNumber], [Name], [UnitOfMeasurement], [Cost], [DiscountAmount], [Manufacturer], [Supplier], [Category], [CurrentDiscount], [QuantityInStock], [Description], [Photo]) VALUES (30, N'0YGHZ7', N'Очки защитные                                                                                       ', N'шт', 700, 9, N'Husqvarna', N'Husqvarna', N'Защита лица, глаз, головы                                   ', 9, 36, N'Очки защитные Husqvarna Clear (5449638-01) открытые с прозрачными линзами', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Администратор                 ')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Сотрудник                     ')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (3, N'Клиент                        ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [RoleID], [LastName], [FirstName], [SecondName], [Login], [Password]) VALUES (1, 1, N'А                                                 ', N'Б                                                 ', N'С                                                 ', N'Admin', N'admin')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([PointOfIssueID])
REFERENCES [dbo].[PointOfIssue] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[OrderOfProduct]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderOfProduct]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
