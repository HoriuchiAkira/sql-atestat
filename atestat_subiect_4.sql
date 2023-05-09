create table scoala (NUME varchar(20), CLASA varchar(3), VARSTA int)

-- cerinta 1

insert into scoala (NUME, CLASA, VARSTA) values ('frone', '2D', 7)
insert into scoala (NUME, CLASA, VARSTA) values ('gabriel', '2D', 18)
insert into scoala (NUME, CLASA, VARSTA) values ('mihail', '2D', 19)
insert into scoala (NUME, CLASA, VARSTA) values ('georgica', '2D', 10)
insert into scoala (NUME, CLASA, VARSTA) values ('marcilica', '2D', 25)

-- cerinta 2

if exists (select * from scoala where VARSTA > 18)
begin
  select * from scoala where VARSTA > 18
end

else
begin
  print 'nu exista elevi cu peste 18 ani'
end

-- cerinta 3

select * from scoala order by VARSTA DESC
