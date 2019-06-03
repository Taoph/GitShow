--1
select *
into TNewProblem
from TProblem
where AuthorID is not null and Reward is not null
--2
insert into TNewProblem
select *
from TProblem
where Reward is null
--3
select distinct AuthorID,Sum(Reward) over(partition by AuthorID) as SUm,Avg(Reward) over(partition by AuthorID) Avg,
Max(Reward) over(partition by AuthorID) as Max,Min(Reward) over(partition by AuthorID) as Min
from TProblem
--4
update TProblem set  NeedRemoteHelp=
case NeedRemoteHelp
     when 0 then 1
	 when 1 then 0
	 else null
end
