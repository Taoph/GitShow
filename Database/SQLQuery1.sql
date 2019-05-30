 Insert into dbo.TT Values('好人')

 alter table dbo.TUser 
 alter column InviteID  int null

 alter table dbo.TUser 
 drop column InviteCode

 Insert into TUser values('小米','asdffff',2)

 alter table dbo.TProblem
 add  AuthorID int null

 alter table dbo.TProblem
 add constraint FK_TProblem_TUser Foreign key (AuthorID) references TUser(ID)

 insert into dbo.TProblem values(N'名称',N'具体的问题内容',1,20,getDate(),1)

 alter table dbo.TProblem
 add constraint DF_TProblem_PublishDateTime Default(getDAte()) for PublishDateTime 

 insert into   dbo.TProblem values(N'问题2','内容2',0,34,default,1)


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
