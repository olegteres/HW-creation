create table if not exists Genre (
	Id serial primary key,
	Name varchar(40) not null
)

create table if not exists Songer (
	Id serial primary key,
	Name varchar(40) not null,
	Id_genre integer references Genre(id)
)

create table if not exists Album (
	Id serial primary key,
	Name varchar(40) not null,
	release_year integer,
	Id_songer integer references Songer(id)
)

create table if not exists Track (
	Id serial primary key,
	Name varchar(40) not null,
	length_seconds integer,
	Id_album integer references Album(id)
)