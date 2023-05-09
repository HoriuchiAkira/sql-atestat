
create table telefon(
NUME varchar(10),
PRENUME varchar(10),
TELEFON varchar(10),
VALOARE decimal(7, 2),
ACHITAT bit
)

-- cerinta 1 

insert into telefon
values
('Firicel', 'Mirciea', '0774562981', 52, 1),
('Greta', 'Mirciea', '0774562981', 52, 0),
('Abadiu', 'Mirciea', '0774562981', 52, 0),
('xilofon', 'Mirciea', '0774562981', 52, 0),
('Real', 'Mirciea', '0774562981', 52, 0)

-- cerinta 2 

if exists (
  select *
  from telefon
  where ACHITAT = 0)
begin
  select NUME, PRENUME
  from telefon
  where ACHITAT = 0
  order by NUME ASC, PRENUME ASC
end

else
begin
  print 'Nu exista restatieri'
end

-- cerinta 3

insert into telefon
values
('Mocanu', 'Mircea', '0359002262', 49, 1)