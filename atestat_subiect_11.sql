create table telefon (NUME varchar(30), TEL varchar(10), IMPULS int, PLATA  int)

-- cerinta 1

insert into telefon values ('fanel', '0999', 5, 0)
insert into telefon values ('ionci', '0999', 4, 0)
insert into telefon values ('badea', '0999', 2, 0)
insert into telefon values ('costel', '0999', 2, 0)
insert into telefon values ('mirciulica', '0999', 10, 0)

--cerinta 2

update telefon set PLATA = IMPULS * 5

-- cerinta 3

select NUME from telefon where PLATA = (select MIN(PLATA) from telefon)