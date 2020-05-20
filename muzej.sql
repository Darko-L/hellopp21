# c:\skola\xampp\mysql\bin\mysql -uedunova -pedunova < c:\skola\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    sifra int not null primary key auto_increment,
    kustos int not null,
    sponzor int not null,
    dijelo int not null,
    mjesto char(3),
    ime varchar(30) not null
);

create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(10) not null,
    prezime varchar(20) not null,
    oib char(11)
);

create table sponzor(
    sifra int not null primary key auto_increment,
    ime varchar(20) not null,
    oib char(11)
);

create table dijelo(
    sifra int not null primary key auto_increment,
    vrsta varchar(20) not null,
    ime varchar(30) not null
);

alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);
alter table izlozba add foreign key (dijelo) references dijelo(sifra);

insert into kustos(ime,prezime,oib) values
('Sah','Mat','12345678910'),
('Mat','Pat','32165498778'),
('He','Man','96325874120'),
('Bob','Marly','96321478501'),
('Dobar','Kustos','74102589632'),
('Dabar','Veličanstveni','12345678954'),
('Pačić','Mali','78945612301');

insert into sponzor (ime,oib) values
('Osiječko','12345698774'),
('Manje dobro pivo','32165498778');

insert into djelo(vrsta,ime) values



insert into izlozba(ime,mjesto,kustos,sponzor) values
('priroda','A',1,1),
('nendertalac','B',2,1),
('dinosauri','C',3,1),
('kiparstvo','D',4,1),
('slikarstvo','F',5,1),
('oružije','G',6,1),
('geologija','F',7,1);

