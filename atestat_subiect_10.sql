create table telefon (NUME varchar(30), TEL varchar(10), ADRESA varchar(25), IMPULS int)

--cerinta 1

insert into telefon values ('Popescu Maria', '0771345678', 'adresa', 7)
insert into telefon values ('fanel', '0771345678', 'adresa', 7)
insert into telefon values ('fanel', '0771345678', 'adresa', 6)
insert into telefon values ('fanel', '0771345678', 'adresa', 6)
insert into telefon values ('fanel', '0771345678', 'adresa', 7)

-- cerinta 2

if exists ( select * from telefon where NUME = 'Popescu Maria' )
begin
  select * from telefon where NUME = 'Popescu Maria'
end

else
begin
  print 'nu exista abonat cu acel nume'
end

-- cerinta 3

select NUME from telefon where IMPULS = ( select MAX(IMPULS) from telefon)