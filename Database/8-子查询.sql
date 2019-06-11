

--1
Insert into dbo.TProblem(Title,Reward,AuthorID) values(N'问题9',30,3),(N'问题10',22,4),(N'问题11',18,5),(N'问题12',35,2),(N'问题12',27,4)
Insert into dbo.TProblem(Title,Reward,AuthorID) values(N'问题13',23,9)
select * from dbo.TProblem order by AuthorID

delete from dbo.TProblem
where Reward=(select Min(p1.Reward) from TProblem p1 where TProblem.AuthorID=p1.AuthorID and p1.Reward is not null group by p1.AuthorID)

--2
select ID,UserName
from dbo.TRegister r1
where ID not in(select InviteID from TRegister where InviteID is not null)

--3 
update dbo.TProblem set Reward=2*Reward
where (select count(ProblemID) from dbo.ProblemKeyword  where TProblem.ID=ProblemID and KeywordID is not null group by ProblemID )>3

--4
select UserName,AuthorID
from TRegister r1 join TProblem p1 on r1.ID=p1.AuthorID
group by AuthorID,UserName
having count(p1.AuthorID)>1

select ID,UserName
from TRegister
where (select count(AuthorID) from TProblem where TRegister.ID=TProblem.AuthorID group by AuthorID)>2


--5 查找每个作者最近发布的一篇文章  
Insert into TArticle(Title,PublishTime,AuthorID) values(N'文章2',getDate(),1),(N'文章3',getDate(),2),(N'文章4',getDate(),2)

select *
from TArticle
WHERE ID in (SELECT top 1 ID FROM TArticle p where TArticle.AuthorID=p.AuthorID Order by PublishTime desc)

--6 查出每一篇求助的悬赏都大于5个帮帮币的作者
select  ID,UserName
from TRegister
where 5<ALL(select Reward from TProblem p where TRegister.ID=p.AuthorID )

backup database [17help] to disk= 'F:\GitShow\Database\17help.db'


set statistics io on
select r.ID,count(AuthorID) as num from TProblem p
join TRegister r on p.AuthorID=r.ID
where Reward>20
group by r.ID
having Count(AuthorID)>3
order by r.ID
set statistics io off

--上次作业评定
--4
alter table TKeyword
add FatherID int null
go
alter table TKeyword
drop column HigherKey

select ID,Keyword
from TKeyword k1 join TKeyword k2
on k1.FatherID=k2.ID
where k2.FatherID is null

backup database [17help] to disk= 'F:\GitShow\Database\17help.db'