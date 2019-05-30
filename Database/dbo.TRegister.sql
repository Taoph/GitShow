CREATE TABLE [dbo].[TRegister] (
    [ID]       INT          IDENTITY (1, 1) NOT NULL,
    [UserName] VARCHAR (30) NOT NULL,
    [Password] VARCHAR (50) NOT NULL,
    [InviteID] INT          NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_TUser_TUser] FOREIGN KEY ([InviteID]) REFERENCES [dbo].[TRegister] ([ID])
);

