USE [Messanger]
GO
/****** Object:  Table [dbo].[ChatRoom]    Script Date: 03.06.2025 14:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatRoom](
	[ID] [int] NOT NULL,
	[Name] [varchar](250) NULL,
 CONSTRAINT [PK_ChatRoom] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatUser]    Script Date: 03.06.2025 14:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatUser](
	[ID] [int] NOT NULL,
	[ID_ChatRoom] [int] NULL,
	[ID_User] [int] NULL,
 CONSTRAINT [PK_ChatUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mess]    Script Date: 03.06.2025 14:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mess](
	[ID] [int] NOT NULL,
	[ID_User] [int] NULL,
	[Mess] [varchar](250) NULL,
	[DueDate] [date] NULL,
	[ID_ChatRoom] [int] NULL,
 CONSTRAINT [PK_Mess] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 03.06.2025 14:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[Name] [varchar](250) NULL,
	[Login] [varchar](250) NULL,
	[Password] [varchar](250) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChatRoom] ([ID], [Name]) VALUES (1, N'Общий чат')
INSERT [dbo].[ChatRoom] ([ID], [Name]) VALUES (2, N'Техподдержка')
INSERT [dbo].[ChatRoom] ([ID], [Name]) VALUES (3, N'Разработчики')
INSERT [dbo].[ChatRoom] ([ID], [Name]) VALUES (4, N'Отдел маркетинга')
INSERT [dbo].[ChatRoom] ([ID], [Name]) VALUES (5, N'Администрация')
GO
INSERT [dbo].[ChatUser] ([ID], [ID_ChatRoom], [ID_User]) VALUES (1, 1, 1)
INSERT [dbo].[ChatUser] ([ID], [ID_ChatRoom], [ID_User]) VALUES (2, 2, 2)
INSERT [dbo].[ChatUser] ([ID], [ID_ChatRoom], [ID_User]) VALUES (3, 3, 3)
INSERT [dbo].[ChatUser] ([ID], [ID_ChatRoom], [ID_User]) VALUES (4, 4, 2)
INSERT [dbo].[ChatUser] ([ID], [ID_ChatRoom], [ID_User]) VALUES (5, 5, 3)
GO
INSERT [dbo].[Mess] ([ID], [ID_User], [Mess], [DueDate], [ID_ChatRoom]) VALUES (1, 1, N'Доброе утро!', CAST(N'2025-12-31' AS Date), 3)
INSERT [dbo].[Mess] ([ID], [ID_User], [Mess], [DueDate], [ID_ChatRoom]) VALUES (2, 2, N'Проверьте тикет №123', CAST(N'2024-06-15' AS Date), 1)
INSERT [dbo].[Mess] ([ID], [ID_User], [Mess], [DueDate], [ID_ChatRoom]) VALUES (3, 3, N'Готов отчет за май', CAST(N'2025-01-01' AS Date), 2)
GO
INSERT [dbo].[User] ([ID], [Name], [Login], [Password]) VALUES (1, N'Иван Петров', N'ivan_p', N'qwerty123')
INSERT [dbo].[User] ([ID], [Name], [Login], [Password]) VALUES (2, N'Анна Сидорова', N'anna_s', N'asdf456')
INSERT [dbo].[User] ([ID], [Name], [Login], [Password]) VALUES (3, N'Алексей Иванов', N'alex_i', N'zxcv789')
GO
ALTER TABLE [dbo].[ChatUser]  WITH CHECK ADD  CONSTRAINT [FK_ChatUser_ChatRoom] FOREIGN KEY([ID_ChatRoom])
REFERENCES [dbo].[ChatRoom] ([ID])
GO
ALTER TABLE [dbo].[ChatUser] CHECK CONSTRAINT [FK_ChatUser_ChatRoom]
GO
ALTER TABLE [dbo].[ChatUser]  WITH CHECK ADD  CONSTRAINT [FK_ChatUser_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ChatUser] CHECK CONSTRAINT [FK_ChatUser_User]
GO
ALTER TABLE [dbo].[Mess]  WITH CHECK ADD  CONSTRAINT [FK_Mess_ChatRoom] FOREIGN KEY([ID_ChatRoom])
REFERENCES [dbo].[ChatRoom] ([ID])
GO
ALTER TABLE [dbo].[Mess] CHECK CONSTRAINT [FK_Mess_ChatRoom]
GO
ALTER TABLE [dbo].[Mess]  WITH CHECK ADD  CONSTRAINT [FK_Mess_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Mess] CHECK CONSTRAINT [FK_Mess_User]
GO
