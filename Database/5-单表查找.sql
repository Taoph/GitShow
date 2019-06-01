alter table TProblem
alter column Body nvarchar(max)

alter table TProblem alter column Body ntext null

alter table TProblem alter column Title nvarchar(50) null
alter table TProblem alter column Reward int null
alter table TProblem alter column publishDateTime DateTime null

alter table TRegister alter column UserName nvarchar(15) null
Insert into TRegister(UserName,Password) values(N'飞哥','1334'),(N'老赵','1334'),(N'小王','1334'),(N'小李','1334'),(N'大黑','1334')

alter table TProblem add constraint FK_TProblem_TRegister Foreign key (AuthorID) references TRegister(ID)  
Insert into TProblem(Reward,AuthorID) values(20,1),(30,2),(30,1),(20,1),(20,3),(25,4),(10,5)

--第一题
select top 3 with ties *
from TProblem
where AuthorID=1
order by Reward desc
--第二题
select * 
from TProblem
where Title not like N'____%数据库%'

select AuthorID,Sum(Reward)
from TProblem
group by AuthorID
order by Sum(Reward) desc

select AuthorID,count(*) as Num ,Sum(reward) Total,Avg(Reward) as Aveage
From TProblem
group by AuthorID

Select *
from TProblem
where Title like '%&%%' escape '&'


