CREATE TABLE [dbo].[TUser] (
    [ID]         INT          IDENTITY (1, 1) NOT NULL,
    [UserName]   VARCHAR (30) NOT NULL,
    [Password]   VARCHAR (50) NOT NULL,
    [Inviter]    VARCHAR (30) NOT NULL,
    [InviteCode] CHAR (6)     NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

