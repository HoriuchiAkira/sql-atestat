create table produse(
DENUMIRE char(15),
CANTITATE int,
PRET decimal(8, 2),
DATAEX date
)

-- cerinta 1

insert into produse
values
('portocale', 200, '3', '2023-05-08'),
('banane', 200, '3', '2023-05-10'),
('kiwi', 200, '3', '2023-06-08'),
('carnati', 200, '3', '2023-04-08'),
('scaun', 200, '3', '2023-05-08')

-- cerinta 2 

select SUM(PRET * CANTITATE)
from produse
as PRET_TOTAL

-- cerinta 3 

if exists (
  select DENUMIRE
  from produse
  where DATAEX > GETDATE() and DATAEX < GETDATE() + 1)
begin
  select DENUMIRE
  from produse
  where DATAEX > GETDATE() and DATAEX < GETDATE() + 1
  order by DENUMIRE ASC
end

else
begin
  print 'Nu exista produse expirate'
end