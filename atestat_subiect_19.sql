create table produse (
DENUMIRE varchar(20),
PRET decimal(7, 2),
CANTITATE int
)

-- cerinta 1

insert into produse values
("mouse", 14, 3),
("morcov", 14, 3),
("morcov", 14, 3),
("morcov", 14, 3),
("morcov", 14, 3)

-- cerinta 2

if exists (select * from produse where DENUMIRE = "tastatura")
begin
  select PRET, CANTITATE from produse where DENUMIRE = "mouse"
end

else
begin
  insert into produse values ("tastatura", 11.57, 25)
end

-- cerinta 3

update produse set PRET = 1.19 * PRET

select * from produse