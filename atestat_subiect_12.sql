create table turism
(
DENUMIRE varchar(20),
TIP varchar(1),
CATEGORIE int
)

-- cerinta 1

insert into turism values 
("hanul cu bade", "H", 1),
("vila maria", "V", 1),
("grota", "M", 2), 
("casa lu bunu", "C", 2), 
("dreamy cave", "V", 4)

-- cerinta 2

if exists (select * from turism where CATEGORIE = 1)
begin
  select * from turism where CATEGORIE = 1
end

else
begin
  print "Nu exista locatii cu acea categorie"
end

-- cerinta 3

select COUNT(CATEGORIE) from turism where CATEGORIE = 4