create table produse (
DENUMIRE varchar(20),
PRET decimal(7, 2),
CANTITATE int
)

-- cerinta 1

insert into produse values
("morcov", 14, 3),
("mouse", 14, 3),
("morcov", 14, 3),
("morcov", 14, 3),
("morcov", 14, 3)

-- cerinta 2

if exists (select * from produse where DENUMIRE = "mouse")
begin
  select PRET, CANTITATE from produse where DENUMIRE = "mouse"
end

else
begin
  print "nu exista produsul mouse"
end

-- cerinta 3

select MAX(PRET) from produse