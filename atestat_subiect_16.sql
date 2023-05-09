create table roma(
NUME varchar(15),
VARSTA int,
CRESTIN varchar(1),
SEX varchar(1)
)

-- cerinta 1

insert into roma values
("Ionci", 16, "T", "M"),
("Ioan", 10, "F", "F"),
("Ghita", 25, "F", "F"),
("tibeta", 16, "F", "F"),
("Titi", 16, "F", "F")

-- cerinta 2

select * from roma

delete from roma where VARSTA > 10 and VARSTA < 25 and SEX = "F"

select * from roma

-- cerinta 3

select NUME from roma where CRESTIN = "F" order by NUME ASC