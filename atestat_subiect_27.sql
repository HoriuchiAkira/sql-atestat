
create table locatar (
NUME varchar(20),
STRADA varchar(20),
BLOC varchar(5),
AP int,
PLATA int
)

-- cerinta 1 

insert into locatar values

('Ion', 'Nufaru', 'A132', 7, 900),
('Ion', 'Nufaru', 'B132', 7, 900),
('BOBO', 'Nufaru', 'A132', 18, 900),
('Ion', 'Nufaru', 'C300', 7, 900),
('Pop Ion', 'Nufaru', 'B40', 7, 900)

-- cerinta 2

select NUME, BLOC
from locatar
order by BLOC ASC, NUME ASC

-- cerinta 3

if exists(
  select *
  from locatar
  where NUME = 'Pop Ion')

begin
  select PLATA
  from locatar
  where NUME = 'Pop Ion'
end

else
begin
  print 'Nu exista acel locatar'
end
