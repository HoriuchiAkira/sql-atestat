create table bibliot
(
AUTOR varchar(20),
TITLU varchar(30),
EDITURA varchar(10),
AN int 
)

-- cerinta 1

insert into bibliot values
("Sadoveanu", "Povesti din folclor", "Dreamy", 1999),
("Sadoveanu", "Pe culmile disperarii", "Dreamy", 1852),
("mircea", "Povesti din copilarie", "All", 1652),
("mircea", "Povesti din folc", "All", 450),
("mircea", "Povesti din folclor", "All", 5000)

-- cerinta 2
if exists (select * from bibliot where AUTOR = "Sadoveanu")
begin
  select * from bibliot where AUTOR = "Sadoveanu"
end

else
begin
  print "Nu exista acest autor"
end

-- cerinta 3

select * from bibliot order by AN ASC