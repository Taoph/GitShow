Create table TAd
(
   ID int,
   Name nvarchar(50),
   Title nvarchar(200),
   Description Ntext,
   ImageUrl nvarchar(300),
   Cost int,
   CreateTime datetime
)

alter table TAd add constraint UQ_TAd_ID  Unique(ID)  

select *
from sys.indexes
where name like 'UQ_TAd_ID' or name= 'IN_TAd_Name'

create unique index IN_TAd_Name on TAd(Name)
drop index TAd.IN_TAd_Name

create clustered index IN_TAd_CreateTime on TAd(CreateTime)
drop index TAd.IN_TAd_CreateTime

alter table TAd alter column CreateTime datetime not null
go
alter table TAd add constraint PK_TAd_CreateTime  Primary key(CreateTime)

backup database [17help] to disk='F:\GitShow\Database\17help.db'
