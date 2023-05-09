create table examen (NUME varchar(20), CLASA varchar(3), NOTA1 decimal(5, 2), NOTA2 decimal(5, 2))

-- cerinta 1

insert into examen values ('fronel', '12C', 6, 8)
insert into examen values ('fronel', '12C', 4, 9)
insert into examen values ('aronel', '12C', 10, 10)
insert into examen values ('fronel', '12C', 11, 2)
insert into examen values ('fronel', '12C', 4, 51)

-- cerinta 2

select (NOTA1 + NOTA2) / 2 as MEDIE from examen where NOTA1 >= 5 and NOTA2 >= 5

-- cerinta 3

if exists (select (NOTA1 + NOTA2) / 2 from examen where NOTA1 >= 5 and NOTA2 >= 5)
begin
  select * from examen where NOTA1 >= 5 and NOTA2 >= 5 order by NUME ASC
end

else
begin
  print 'nu exista elevi absolventi'
end