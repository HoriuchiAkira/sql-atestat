create table elevi
(
NUME varchar(15),
CLASA varchar(3),
VARSTA int
)

-- cerinta 1

insert into elevi values
("Sadoveanu", "4C", 9),
("Bull", "6B", 11),
("mircea", "3A", 8),
("costica", "12A", 18),
("fane", "12A", 23)

-- cerinta 2
if exists (select * from elevi where CLASA = "12A" and VARSTA >= 18)
begin
  select * from elevi where CLASA = "12A" and VARSTA >= 18
end

else
begin
  print "Nu exista vreun elev"
end

-- cerinta 3

select * from elevi order by CLASA ASC