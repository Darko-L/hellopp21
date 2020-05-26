# c:\skola\xampp\mysql\bin\mysql -uedunova -pedunova < c:\skola\muzej_zavrsni.sql

drop database if exists muzej_zavrsni;
create database muzej_zavrsni;
use muzej_zavrsni;


create table izlozba(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    kustos int not null,
sponzor int null
);

create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(30) not null,
    prezime varchar(40) not null,
    email varchar(50) null
);

create table djelo(
    sifra int not null primary key auto_increment,
    ime varchar(100) not null,
    autor varchar(70) null,
    nastao_godine datetime null
);

create table sponzor(
    sifra int not null primary key auto_increment,
    ime varchar(90) not null,
    oib char(11) null,
    email varchar(50) null
);
create table clan(
    sifra int not null primary key auto_increment,
    djelo int not null,
    izlozba int not null,
    pozicija varchar(10) null
);

alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add foreign key (sponzor) references sponzor(sifra);

alter table clan add foreign key (izlozba) references izlozba(sifra);
alter table clan add foreign key (djelo) references djelo(sifra);


insert into kustos (ime,prezime,email) values
('Marko','Markić','marko@gmail.com'),
('Darko','Darkić','darko@gmail.com'),
('Stipe','Stipić','stipe@gmail.com'),
('Zoran','Zorkić','zoka@gmail.com'),
('Ivan','Ivanić','ivan@gmail.com'),
('Ivana','Ivić','ivana@gmail.com'),
('Stojko','Stojkić','stojka@gmail.com'),
('Marin','Marinić','marin@gmail.com'),
('Rebeka','Rebekić','rebeka@gmail.com'),
('Zlatka','Zlatkić','zlatka@gmail.com');
