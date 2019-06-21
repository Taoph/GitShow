insert into  TAd
select [Name],Title,Cost
from TAd

drop table TAd

Create table TAd
(
  ID int identity,
  Name varchar(50),
  Cost int
)

insert into TAd values('liili',50),('migg',25),('ligfs',43)


checkpoint
DBCC DROPCLEANBUFFERS

SET Statistics io on
insert into TAd
select Name,Cost
from TAd
set statistics io off

set statistics io on
select ID
from TAd
where ID>25
set statistics io off

create clustered index IX_TAd_ID on TAd(ID)
drop index TAd.IX_TAd_ID

create index IX_TAd_ID on TAd(ID,Cost)
drop index TAd.IX_TAd_ID
create unique index IX_TAd_ID on TAd(ID)

backup database [17help] to disk='F:\GitShow\Database\17help.db'

