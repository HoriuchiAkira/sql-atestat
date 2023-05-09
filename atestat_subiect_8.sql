create table telefon (NUME varchar(30), TEL varchar(10), ADRESA varchar(25))

-- cerinta  1

insert into telefon values ('Gigel', '0773564469', 'Str. Popoiu')
insert into telefon values ('Fanel', '0773564469', 'Str. Popoiu')
insert into telefon values ('Viorel', '0773564469', 'Str. Popoiu')
insert into telefon values ('Georgel', '0773564469', 'Str. Popoiu')
insert into telefon values ('Costel', '0773564469', 'Str. Popoiu')

-- cerinta 2

if exists (select * from telefon where TEL = '0359123456')
begin
  print 'Exista deja abonat cu acest numar de telefon'
end
else
begin
  insert into telefon values ('Popescu', '0359123456', 'no address')
end

-- cerinta 3

select * from telefon order by NUME ASC