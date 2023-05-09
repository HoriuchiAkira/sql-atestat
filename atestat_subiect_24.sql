
create table hotel (
DENUMIRE varchar(15),
NR_CAM int,
NR_PAT int,
PRET_PAT int,
PRET_CAM int
)

-- cerinta 1 

insert into hotel (DENUMIRE, NR_CAM, NR_PAT, PRET_PAT, PRET_CAM) values
("Hotel Mafioso", 20, 2, 200, 0),
("Villa Mafioso", 5, 4, 500, 0),
("Casa Mafioso", 10, 1, 175, 0),
("Hotel Brono", 15, 2, 150, 0),
("Hotel Green", 20, 2, 250, 0)

-- cerinta 2

update hotel 
set PRET_CAM = NR_CAM * NR_PAT * PRET_PAT;

select *
from hotel

-- cerinta 3

select * 
from hotel 
  where PRET_CAM = (
    select MAX(PRET_CAM)
    from hotel)