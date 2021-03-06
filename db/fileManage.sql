

USE [FileManage]
GO
/****** Object:  Table [dbo].[DownloadHistory]    Script Date: 2017/4/19 11:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DownloadHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserAccount] [varchar](20) NOT NULL,
	[UpFileName] [varchar](20) NOT NULL,
	[FileType] [varchar](50) NOT NULL,
	[DownDatetime] [varchar](50) NULL,
 CONSTRAINT [PK_DownloadHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FileLists]    Script Date: 2017/4/19 11:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileLists](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserAccount] [varchar](20) NOT NULL,
	[UpFileName] [varchar](20) NOT NULL,
	[FileType] [varchar](50) NOT NULL,
	[AddTime] [varchar](50) NULL,
 CONSTRAINT [PK_FileLists] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2017/4/19 11:36:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userAccount] [varchar](20) NOT NULL,
	[userPwd] [varchar](50) NOT NULL,
	[userName] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([id], [userAccount], [userPwd], [userName]) VALUES (1, N'admin', N'admin', N'测试用户')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [FileManage] SET  READ_WRITE 
GO
