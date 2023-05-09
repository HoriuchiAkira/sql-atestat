create table carti (
  AUTOR varchar(20),
  TITLU varchar(20),
  EDITURA varchar(10),
  AN_APAR int
)

-- cerinta 1

insert into carti values 
('Michael Bay', 'The red river', 'Umanitas', 1999),
('Michael Bay', 'The blue river', 'Umanitas', 2002),
('Michael Bay', 'The yellow river', 'Umanitas', 2005),
('Michael Bay', 'The green river', 'Umanitas', 1869),
('Michael Bay', 'The black river', 'Umanitas', 2000)

-- cerinta 2

if exists (
  select TITLU from carti where AN_APAR > 2000
)
begin
  select TITLU from carti where AN_APAR > 2000 order by AN_APAR ASC
end

else
begin
  print 'Nu exista vreo carte'
end

-- cerinta 3

insert into carti values ('Thomas Mann', 'Muntele vrajit', 'Corint', 2009)