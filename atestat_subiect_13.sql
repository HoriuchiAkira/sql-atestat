create table bibliot
(
AUTOR varchar(20),
TITLU varchar(30),
EDITURA varchar(10)
)

-- cerinta 1

insert into bibliot values
("mircea", "Povesti din folclor", "Dreamy"),
("mircea", "Pe culmile disperarii", "Dreamy"),
("mircea", "Povesti din copilarie", "All"),
("mircea", "Povesti din folc", "All"),
("mircea", "Povesti din folclor", "All")

-- cerinta 2
if exists (select * from bibliot where TITLU = "Pe culmile disperarii")
begin
  select * from bibliot where TITLU = "Pe culmile disperarii"
end

else
begin
  print "Nu exista acea carte"
end

-- cerinta 3

select TITLU from bibliot where EDITURA = "All"