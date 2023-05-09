
create table olimp (
DENUMIRE varchar(10),
PRET int,
MARIME int,
FEL varchar(1)
)

-- cerinta 1 

insert into olimp values

('Adidas', 400, 38, 'F'),
('Adidas', 500, 42, 'M'),
('Vans', 400, 43, 'M'),
('Zuzu', 400, 42, 'F'),
('Dreamy', 400, 42, 'M')

-- cerinta 2

select * from olimp where FEL = 'M' and MARIME = 42

-- cerinta 3

select *
from olimp
where FEL = 'F' and PRET = (
  select MAX(PRET)
  from olimp
  where FEL = 'F')

