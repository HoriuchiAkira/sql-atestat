create table elevi (
NUME varchar(15),
NOTA1 decimal(5, 2),
NOTA2 decimal(5, 2),
REZULTAT varchar(7)
)

-- cerinta 1

insert into elevi (NUME, NOTA1, NOTA2) values 
("georgica", 7.5, 9), 
("georgica", 5, 9), 
("georgica", 10, 9), 
("georgica", 7.5, 3), 
("georgica", 7.5, 2)

-- cerinta 2

update elevi set 
  REZULTAT = case
    when NOTA1 >= 5 and NOTA2 >= 5 then "ADMIS"
    else "RESPINS"
    end;


-- cerinta 3

create table Admis (
  NUME varchar(15),
  NOTA1 decimal(5, 2),
  NOTA2 decimal(5, 2),
  REZULTAT varchar(7)
)

create table Respins (
  NUME varchar(15),
  NOTA1 decimal(5, 2),
  NOTA2 decimal(5, 2),
  REZULTAT varchar(7)
)
  
insert into Admis select * from elevi where REZULTAT = 'ADMIS'
insert into Respins select * from elevi where REZULTAT = 'RESPINS'

select * from Admis
select * from Respins