USE [17help]
GO

/****** 对象: Table [dbo].[ProblemKeyword] 脚本日期: 2019/5/30 18:21:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProblemKeyword] (
    [ID]        INT IDENTITY (1, 1) NOT NULL,
    [ProblemID] INT NULL,
    [KeywordID] INT NULL
);


