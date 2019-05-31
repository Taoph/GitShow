use [17help] 
CREATE TABLE [dbo].[TProblem] (
    [ID]              INT            IDENTITY (1, 1) NOT NULL,
    [Title]           NVARCHAR (255) NOT NULL,
    [Content]         TEXT           NOT NULL,
    [NeedRemoteHelp]  BIT            NULL,
    [Reward]          INT            NOT NULL,
    [PublishDateTime] DATETIME       NOT NULL,
    [AuthorID]        INT            NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_TProblem_TUser] FOREIGN KEY ([AuthorID]) REFERENCES [dbo].[TUser] ([ID])
);
CREATE TABLE [dbo].[TRegister] (
    [ID]       INT          IDENTITY (1, 1) NOT NULL,
    [UserName] VARCHAR (30) NOT NULL,
    [Password] VARCHAR (50) NOT NULL,
    [InviteID] INT          NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_TUser_TUser] FOREIGN KEY ([InviteID]) REFERENCES [dbo].[TRegister] ([ID])
);

Create table TProfile
 (
    ID  int Primary key not null,
    HeadSculpture image null,
	Gender nchar(1) check(Gender=N'男' or Gender=N'女'),
	Birthday datetime null,
	Keywords varchar(100) null,
	SelfIntroduction text null,
	Constraint FK_TProfile Foreign Key (ID) references TRegister(ID)
 )

 Create table TKeyword
 (
    ID int primary key identity not null,
	Keyword varchar(50) unique not null,
 )
 
 Create table ProblemKeyword
 (
   ID int primary key identity not null,
   ProblemID int,
   KeywordID int,
   constraint FK_ProblemKeyword_Problem Foreign Key (ProblemID) references TProblem(ID),
   constraint FK_ProblemKeyword_Keywoed Foreign Key (KeywordID) references TKeyword(ID)
 )

 Create table TCredit 
 (
   ID int primary key identity,
   Method varchar(50) not null,
   Value int not null,
 )
 alter  table TCredit 
 add constraint UQ_TCredit_Method unique(Method)