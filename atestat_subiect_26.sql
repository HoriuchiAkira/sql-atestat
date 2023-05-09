
create table elevi (
NUME varchar(10),
PRENUME varchar(10),
DATAN date,
ADRESA varchar(30),
CLASA varchar(3)
)

-- cerinta 1 

insert into elevi 
values
('Ion', 'Popa', '2008-11-11', 'Nufaru', '5c'),
('Sergiu', 'Roman', '1992-11-11', 'Nufaru', '2a'),
('BOBO', 'Nufaru', '1700-11-11', 'Nufaru', '5c'),
('Ion', 'Misulica', '1934-11-11', 'Nufaru', '12c'),
('Emil', 'Racovita', '1993-11-11', 'Nufaru', '1a')

-- cerinta 2

select NUME, CLASA
from elevi
order by CLASA ASC, NUME ASC

-- cerinta 3

create table alocatii(
NUME varchar(10),
PRENUME varchar(10)
)

insert into alocatii
  select NUME, PRENUME
  from elevi
  where DATAN >= '1993'

select *
from alocatii
