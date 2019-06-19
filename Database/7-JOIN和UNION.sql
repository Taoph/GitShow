select ID,UserName,Password
into TNewRegister
from TRegister

use master
go
backup database [17help] To Disk='F:\GitShow\Database\17help.db'

restore database [17help] From disk='F:\GitShow\Database\17help.db'

update TCopyRegister set UserName=N'明' where ID=2


select ID,UserName from TRegister
union  all
select ID,UserName from TCopyRegister

delete TProblem where ID not in(Select Max(ID) from TProblem group by Title )

--作业
--1
select P.Title,R.UserName
from TProblem P join TRegister R on  P.AuthorID=R.ID

Insert into TRegister Values('lili','324455',1),('xx','2445',1),('zl','32455455',3),('wz','4367',1),('gz','234556',1),('yz','hshhgh',1)

--2
delete TRegister where ID not in(select AuthorID from TProblem)

--3
select r.UserName as UserName,i.UserName as InviterName
from TRegister r left join TRegister i on r.InviteID=i.ID

--4 
alter table TKeyword alter column Keyword nvarchar(50) null
go
alter table TKeyword
add  HigherKey Nvarchar(50) null

Insert into TKeyword Values(N'IT技术',null),(N'编程语言','IT技术'),(N'SQL',N'编程语言'),(N'C#',N'编程语言')

SELECT k.Keyword Keyword,hk.Keyword hKeyword,hhk.Keyword hhKeyword
from TKeyword k  join TKeyword hk on k.HigherKey=hk.Keyword  left join TKeyword hhk on hk.HigherKey=hhk.Keyword  


--5
Create table TSuggest
(
  ID int Primary key identity,
  Title  nvarchar(255) not null,
  Content ntext null,
  NeedRemoteHelp bit null,
  PublishTime DateTime null,
  Kind nvarchar(20) null,
  AuthorID int,
  constraint FK_TSuggest_TRegister Foreign Key(AuthorID) references TRegister(ID)
)
Create table TArticle
(
  ID int Primary key identity,
  Title  nvarchar(255) not null,
  Content ntext null,
  NeedRemoteHelp bit null,
  PublishTime DateTime null,
  Category int null,
  AuthorID int,
  constraint FK_TArticle_TRegister Foreign Key(AuthorID) references TRegister(ID)
)
insert into TArticle(Title,PublishTime) values(N'文章1',getDate())
go
insert into TSuggest(Title,PublishTime) values(N'文章1',getDate())

select Title,PublishTime
from TProblem 
union 
select Title ,PublishTime
from TSuggest 
union
select Title,PublishTime
from TArticle
order by PublishTime desc
