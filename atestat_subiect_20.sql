create table elevi (
NUME varchar(15),
CLASA varchar(4),
PROFIL varchar(10),
MEDIA decimal(5, 2)
)

-- cerinta 1

insert into elevi values 
("georgica", "12E", "real", 6),
("georgica", "12E", "real", 8),
("georgica", "12E", "real", 9),
("georgica", "12E", "real", 10),
("georgica", "12E", "real", 3)

-- cerinta 2

if exists (select * from elevi where PROFIL = "real")
begin
  select * from elevi where PROFIL = "real"
end

else
begin
  print "nu exista elevi la acel profil"
end

-- cerinta 3

select AVG(MEDIA) from elevi where CLASA = "12E"