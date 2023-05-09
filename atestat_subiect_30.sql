create table carti (
AUTOR varchar(10),
TITLU varchar(10),
ANAPAR int,
NRE int,
PRET decimal(7, 2)
)

-- cerinta 1

insert into carti
values
('McCarthy', 'Meridian', 1992, 200, 35),
('Ionci', 'DelaVale', 1990, 0, 35),
('Ionci', 'DelaMare', 1995, 0, 35),
('Ionci', 'DelaDeal', 2004, 400, 35),
('Ionci', 'DelaMunte', 2012, 50, 35)

-- cerinta 2

if exists (
  select *
  from carti
  where ANAPAR > 1990 and ANAPAR < 2010)
begin
  select AUTOR, TITLU, ANAPAR, NRE
  from carti
  where ANAPAR > 1990 and ANAPAR < 2010
end

else
begin
  print 'Nu exista carti din acei ani'
end

-- cerinta 3

delete from carti
where NRE = 0

select *
from carti