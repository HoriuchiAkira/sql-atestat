create table clasa (
NUME varchar(30),
DEN_P varchar(30),
LIMBAJ varchar(20),
NOTA_P decimal(5, 2),
NOTA_B decimal(5, 2),
MEDIA decimal(5, 2)
)

-- cerinta 1

insert into clasa (NUME, DEN_P, LIMBAJ, NOTA_P, NOTA_B) values
('Igapie', 'Joc De Noroc', 'C#', 9, 7.7),
('Bgapie', 'Joc De Noroc', 'C#', 9, 8.7),
('Fgapie', 'Joc De Noroc', 'C#', 9, 9.7),
('Agapie', 'Joc De Noroc', 'C#', 9, 5.7),
('Agapie', 'Joc De Noroc', 'C#', 9, 5.7)

-- cerinta 2

if exists 
( select * from clasa where NOTA_B >= 7 and NOTA_P >= 7)
begin
  update clasa set MEDIA = 
    case 
      when NOTA_B >= 7 and NOTA_P >= 7 then (NOTA_P + NOTA_B) / 2
      else NULL
    END
  
  select * from clasa
end

else
begin
  print 'Nu exista elevi admisi'
end

-- cerinta 3

if exists 
( select * from clasa where NOTA_B >= 7 and NOTA_P >= 7)
begin
  select NUME from clasa where NOTA_B >= 7 and NOTA_P >= 7 order by NUME ASC
end