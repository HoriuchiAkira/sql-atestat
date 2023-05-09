create table scoala (NUME varchar(20), CLASA varchar(3), VARSTA int)

-- cerinta 1

insert into scoala (NUME, CLASA, VARSTA) values ('frone', '7D', 7)
insert into scoala (NUME, CLASA, VARSTA) values ('gabi', '7D', 7)
insert into scoala (NUME, CLASA, VARSTA) values ('Ionescu Dan', '7D', 7)
insert into scoala (NUME, CLASA, VARSTA) values ('cristi', '10A', 7)
insert into scoala (NUME, CLASA, VARSTA) values ('victor', '11G', 7)

-- cerinta 2

if exists (select * from scoala where NUME = 'Ionescu Dan')
begin
  select CLASA from scoala where NUME = 'Ionescu Dan'
end

else
begin
  print 'elevul nu exista'
end

-- cerinta 3

select NUME from scoala where CLASA = (select CLASA from scoala where NUME = 'Ionescu Dan') and NUME != 'Ionescu Dan'