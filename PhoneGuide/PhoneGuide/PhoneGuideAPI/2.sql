USE [PhoneGuide]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 12.06.2019 23:56:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonDetail]    Script Date: 12.06.2019 23:56:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[Mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_PersonDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonPhone]    Script Date: 12.06.2019 23:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonPhone](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[PhoneNumberID] [int] NOT NULL,
 CONSTRAINT [PK_PersonPhone] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 12.06.2019 23:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [nvarchar](15) NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([ID], [Name], [Surname]) VALUES (1, N'Hasan', N'Alkan')
INSERT [dbo].[Person] ([ID], [Name], [Surname]) VALUES (2, N'İsmail', N'Işık')
INSERT [dbo].[Person] ([ID], [Name], [Surname]) VALUES (3, N'Fatih', N'Kaya')
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[PersonDetail] ON 

INSERT [dbo].[PersonDetail] ([ID], [PersonID], [Address], [Mail]) VALUES (1, 1, N'Ankara', N'hasan@gmail.com')
INSERT [dbo].[PersonDetail] ([ID], [PersonID], [Address], [Mail]) VALUES (2, 2, N'İstanbul', N'ismail@gmail.com')
INSERT [dbo].[PersonDetail] ([ID], [PersonID], [Address], [Mail]) VALUES (3, 3, N'İstanbul', N'fatih@gmail.com')
SET IDENTITY_INSERT [dbo].[PersonDetail] OFF
SET IDENTITY_INSERT [dbo].[PersonPhone] ON 

INSERT [dbo].[PersonPhone] ([ID], [PersonID], [PhoneNumberID]) VALUES (1, 2, 2)
INSERT [dbo].[PersonPhone] ([ID], [PersonID], [PhoneNumberID]) VALUES (5, 1, 1)
SET IDENTITY_INSERT [dbo].[PersonPhone] OFF
SET IDENTITY_INSERT [dbo].[Phone] ON 

INSERT [dbo].[Phone] ([ID], [PhoneNumber]) VALUES (1, N'01234567899')
INSERT [dbo].[Phone] ([ID], [PhoneNumber]) VALUES (2, N'05382685489')
INSERT [dbo].[Phone] ([ID], [PhoneNumber]) VALUES (3, N'05421237856')
SET IDENTITY_INSERT [dbo].[Phone] OFF
ALTER TABLE [dbo].[PersonDetail]  WITH CHECK ADD  CONSTRAINT [FK_PersonDetail_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([ID])
GO
ALTER TABLE [dbo].[PersonDetail] CHECK CONSTRAINT [FK_PersonDetail_Person]
GO
ALTER TABLE [dbo].[PersonPhone]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhone_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([ID])
GO
ALTER TABLE [dbo].[PersonPhone] CHECK CONSTRAINT [FK_PersonPhone_Person]
GO
ALTER TABLE [dbo].[PersonPhone]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhone_Phone] FOREIGN KEY([PhoneNumberID])
REFERENCES [dbo].[Phone] ([ID])
GO
ALTER TABLE [dbo].[PersonPhone] CHECK CONSTRAINT [FK_PersonPhone_Phone]
GO
