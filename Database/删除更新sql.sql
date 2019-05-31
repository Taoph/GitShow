Insert into TCredit values(N'督促',2),('评价分',1)

alter table TCredit drop UQ_TCredit_Method

Insert into TCredit values('督促',2),('评价',1),('其它',15),('邮箱注册',20),('注册',10)

delete TCredit 

truncate table TCredit

drop table TCredit

Create table TCredit
(
   ID int Primary key identity,
   CreateTime datetime,
   kind   NVarchar(10),
   Value  int,
   Total  int,
   Introduction NVarchar(100),
   UserID  int Foreign key references TRegister(ID)
)

alter table TProblem
add constraint CK_TProblem_Reward check(Reward>0)

Insert into TProblem(Title,Content,PublishDateTime,Reward) values('求助1','内容1',getDate(),3.5)

Select * from TProblem

alter table TProblem drop CK_TProblem_Reward

insert into TProblem(Title,Content,PublishDateTime,Reward) values('求助2','内容2',getDate(),-5),
('求助3','内容3',getDate(),-1),('求助4','内容4',getDate(),-3),('求助5','内容5',getDate(),2)



alter table TProblem add Body text
update TProblem set Body=Content 
alter table TProblem drop column Content

insert into TProblem(Title,Body,PublishDateTime,Reward) values('求助2','内容2',getDate(),-5),
('求助3','内容3',getDate(),-1),('求助4','内容4',getDate(),-3),('求助5','内容5',getDate(),2)

update  TProblem set Reward=Reward+1 where abs(Reward)%2=1