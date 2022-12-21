USE [DEV_TEST]
GO
/****** Object:  StoredProcedure [dbo].[all_students]    Script Date: 12/20/2022 11:34:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[all_students]
as select * from dbo.StudentTest
go;



create table arifeenemployee(Employee_ID int primary key identity(1,1), Employee_Name varchar(50), Employee_Designation varchar(50))
insert into arifeenemployee values('arifeen','Programmer')

select * from arifeenemployee

/*Stored Procedure Create*/
create procedure InsertRecord (
@Emp_Name varchar(50),
@Emp_Design varchar(50)
)
as
begin
insert into arifeenemployee values(@Emp_Name,@Emp_Design)
end

execute InsertRecord 'kamran', 'web Developer'

select * from arifeenemployee

alter procedure InsertRecord
(
@Emp_Name nvarchar(50),
@Emp_Design nvarchar(50)
)
as
begin
insert into arifeenemployee values(@Emp_Name,@Emp_Design)
end


create procedure UpdateRecord 
(
@ID int,
@Emp_Name varchar(50),
@Emp_Designation varchar(50)
)
as
begin
update arifeenemployee set Employee_Name = @Emp_Name, Employee_Designation = @Emp_Designation where Employee_ID=@ID 
end

exec UpdateRecord 1,'Asif','Software Engineer' 

select * from arifeenemployee

create procedure DeleteRecord
(@Employee_ID int)
as
begin
delete from arifeenemployee where Employee_ID=@Employee_ID
end

execute DeleteRecord 1

select * from arifeenemployee

--drop procedure procedureName 