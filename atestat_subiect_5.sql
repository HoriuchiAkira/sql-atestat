create table examen (NUME varchar(20), NOTA1 decimal(5, 2), NOTA2 decimal (5, 2), MEDIA decimal (5, 2))

-- cerinta 1

insert into examen (NUME, NOTA1, NOTA2) values ('xronel', 6.0, 7.0)
insert into examen (NUME, NOTA1, NOTA2) values ('gronel', 6.0, 3.0)
insert into examen (NUME, NOTA1, NOTA2) values ('hronel', 2.0, 7.0)
insert into examen (NUME, NOTA1, NOTA2) values ('ironel', 10.0, 10.0)
insert into examen (NUME, NOTA1, NOTA2) values ('jronel', 5.0, 9.0)

-- cerinta 2

update examen set MEDIA = (NOTA1 + NOTA2) / 2 where NOTA1 >= 5 and NOTA2 >= 5

select * from examen

-- cerinta 3

if exists (select * from examen where MEDIA is not null)
begin
  select NUME from examen where MEDIA is not null order by NUME ASC
end

else
begin
  print 'nu exista elevi absolventi'
end