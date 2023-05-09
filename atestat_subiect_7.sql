create table produse (DENUMIRE varchar(20), PRET decimal(7, 2), CANTITATE int)

-- cerinta 1

insert into produse values ('suchili', 3, 20)
insert into produse values ('suc', 420, 3)
insert into produse values ('chili', 2, 0)
insert into produse values ('portocale', 3, 10)
insert into produse values ('pp', 3, 0)

-- cerinta 2

delete from produse where CANTITATE = 0

-- cerinta 3

update produse set PRET = PRET * 1.1

select * from produse