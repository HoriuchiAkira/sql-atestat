create table roma(
NUME varchar(15),
VARSTA int,
CRESTIN varchar(1),
SEX varchar(1)
)

-- cerinta 1

insert into roma values
("Ionci", 16, "T", "M"),
("Ioan", 5, "F", "F"),
("Ghita", 25, "F", "F"),
("tibeta", 16, "F", "F"),
("Titi", 16, "F", "F")

-- cerinta 2

if exists (select * from roma where VARSTA > 3 and VARSTA < 10)
begin 
  select * from roma where VARSTA > 3 and VARSTA < 10
end

else
begin
  print "nu exista copii"
end

-- cerinta 3

select NUME from roma where VARSTA = (select MAX(VARSTA) from roma)