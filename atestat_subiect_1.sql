-- cerinta 0 - crearea tabelului

create table elevi (NUME varchar(20), CLASA varchar(3), ABSENTE int)

-- cerinta a - inserarea inregistrarilor

insert into elevi (NUME, CLASA, ABSENTE) values ('Gigel', '12C', 39)
insert into elevi (NUME, CLASA, ABSENTE) values ('Fanel', '12A', 17)
insert into elevi (NUME, CLASA, ABSENTE) values ('Jamel', '5F', 3)
insert into elevi (NUME, CLASA, ABSENTE) values ('Frone', '12A', 0)
insert into elevi (NUME, CLASA, ABSENTE) values ('Ciurda', '12A', 17)

-- cerinta b - afisare elevi cu absente maxime

select * from elevi

if exists (select * from elevi where CLASA = '12A')
BEGIN
  select * from elevi where CLASA = '12A' and absente = (select max(absente) from elevi where CLASA = '12A')
end

else
BEGIN
  print 'clasa nu exista'
end

-- cerinta c - 

select sum(absente) as 'Total absente' from elevi