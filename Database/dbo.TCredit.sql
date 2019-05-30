USE [17help]
GO

/****** 对象: Table [dbo].[TCredit] 脚本日期: 2019/5/30 18:23:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[TCredit];


GO
CREATE TABLE [dbo].[TCredit] (
    [ID]     INT          IDENTITY (1, 1) NOT NULL,
    [Method] VARCHAR (50) NOT NULL,
    [Value]  INT          NOT NULL
);


