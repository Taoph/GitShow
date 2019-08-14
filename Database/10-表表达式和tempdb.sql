


select 
(select  P.ID ,P.AuthorID,count(*) as count
from TProblem P join ProblemKeyword PK on P.ID=PK.ProblemID
group by P.ID,P.AuthorID) as p1
join
(select AuthorID from TProblem
group by AuthorID) as p2
on p1.AuthorID=p2.AuthorID




