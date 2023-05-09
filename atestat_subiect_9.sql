create table telefon (NUME varchar(30), TEL varchar(10), ADRESA varchar(25), IMPULS int)

-- cerinta 1

insert into telefon values ('Scarlat Vasile', '0640123444', 'adresa', 2)
insert into telefon values ('ionci', '0740123444', 'adresa', 2)
insert into telefon values ('ionci', '0740123444', 'adresa', 2)
insert into telefon values ('ionci', '0740123444', 'adresa', 2)
insert into telefon values ('ionci', '0740123444', 'adresa', 2)

-- cerinta 2

if exists (select * from telefon where NUME = 'Scarlat Vasile' and TEL = '0740123444')
begin
  delete from telefon where NUME = 'Scarlat Vasile' and TEL = '0740123444'
end
else
begin
  print 'nu exista un abonat cu aceste detalii'
end

-- cerinta 3

select SUM(IMPULS) from telefon  