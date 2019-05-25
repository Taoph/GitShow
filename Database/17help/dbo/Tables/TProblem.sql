CREATE TABLE [dbo].[TProblem] (
    [ID]              INT            IDENTITY (1, 1) NOT NULL,
    [Title]           NVARCHAR (255) NOT NULL,
    [Content]         TEXT           NOT NULL,
    [NeedRemoteHelp]  BIT            NULL,
    [Reward]          INT            NOT NULL,
    [PublishDateTime] DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

