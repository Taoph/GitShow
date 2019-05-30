CREATE TABLE [dbo].[TProfile] (
    [ID]               INT           NOT NULL,
    [HeadSculpture]    IMAGE         NULL,
    [Gender]           NCHAR (1)     NULL,
    [Birthday]         DATETIME      NULL,
    [Keywords]         VARCHAR (100) NULL,
    [SelfIntroduction] TEXT          NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_TProfile] FOREIGN KEY ([ID]) REFERENCES [dbo].[TRegister] ([ID]),
    CHECK ([Gender]=N'男' OR [Gender]=N'女')
);

