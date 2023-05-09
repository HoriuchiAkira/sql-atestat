create table elevi (NUME varchar(20), CLASA varchar(3), ABSENTE int)

-- cerinta 1

insert into ELEVI (NUME, CLASA, ABSENTE) values ('pipu', '0A', 12)
insert into ELEVI (NUME, CLASA, ABSENTE) values ('titu', '0A', 2)
insert into ELEVI (NUME, CLASA, ABSENTE) values ('costica', '0A', 70)
insert into ELEVI (NUME, CLASA, ABSENTE) values ('fanel', '12B', 0)
insert into ELEVI (NUME, CLASA, ABSENTE) values ('dreamy', '12B', 16)

-- cerinta 2

if exists (select * from ELEVI where CLASA = '12B')
begin
  select * from ELEVI where CLASA = '12b' and ABSENTE > 10
end
else
begin
  print 'Clasa nu exista'
end

-- cerinta 3

delete from ELEVI where ABSENTE = 0
select * from ELEVI