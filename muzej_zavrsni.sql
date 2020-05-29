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
    nastao_godine varchar(50) null
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
('Stipe','Stipić','stipegit@gmail.com'),
('Zoran','Zorkić','zoka@gmail.com'),
('Ivan','Ivanić','ivan@gmail.com'),
('Ivana','Ivić','ivana@gmail.com'),
('Stojko','Stojkić','stojka@gmail.com'),
('Marin','Marinić','marin@gmail.com'),
('Rebeka','Rebekić','rebeka@gmail.com'),
('Zlatka','Zlatkić','zlatka@gmail.com');

insert into djelo(ime,autor,nastao_godine) values
('Mona Lisa','Leonardo da Vinci','1503'),
('Salvator Mundi','Leonardo da Vinci','1500'),
('Posljednja vecera','Leonardo da Vinci','1498'),
('Sveti Ivan Krstitelj','Leonardo da Vinci','1513'),
('Mary Magdalene','Leonardo da Vinci','1499'),
('Krštenje Kristovo','Leonardo da Vinci','1475'),
('Bacchus','Leonardo da Vinci','1515'),
('Madonna Litta','Leonardo da Vinci','1490'),
('Djevica s djetetom i mačkom','Leonardo da Vinci','1478'),
('David','Michelangelo Buonarroti','1504'),
('Posljednji sud','Michelangelo Buonarroti','1541'),
('Sveta obitelj','Michelangelo Buonarroti','1506'),
('Mojsije','Michelangelo Buonarroti','1515'),
('Djevica s Isusom','Michelangelo Buonarroti','1504'),
('Bitka kentaura','Michelangelo Buonarroti','1492'),
('Umirući rob','Michelangelo Buonarroti','1516'),
('Krist na križu','Michelangelo Buonarroti','1492'),
('Faunova glava','Michelangelo Buonarroti','1489'),
('Delfijska sibila','Michelangelo Buonarroti','1509'),
('Napastovanje i izgon iz raja','Michelangelo Buonarroti','1512'),
('Rob koji se budi','Michelangelo Buonarroti','1536'),
('Polaganje Krista u grob','Michelangelo Buonarroti','1501'),
('David i Golijat','Michelangelo Buonarroti','1509'),
('Apollo','Michelangelo Buonarroti','1530'),
('Dan','Michelangelo Buonarroti','1531'),
('Pobjeda','Michelangelo Buonarroti','1534'),
('Rob Atlas','Michelangelo Buonarroti','1536'),
('Sveti Petar','Michelangelo Buonarroti','1495'),
('Čučeći dječak','Michelangelo Buonarroti','1530'),
('Madonna Medici','Michelangelo Buonarroti','1531'),
('La Fornarian','Raffaello Santi da Urbino','1520'),
('Vjenčanj Djevice','Raffaello Santi da Urbino','1504'),
('Žena s velom','Raffaello Santi da Urbino','1515'),
('Mlada žena s jednorogom','Raffaello Santi da Urbino','1506'),
('Madona s češljugarom','Raffaello Santi da Urbino','1506'),
('Uskrsnuće Kristovo','Raffaello Santi da Urbino','1502'),
('Portret Mladića','Raffaello Santi da Urbino','1514'),
('Portret Agnolo Doni','Raffaello Santi da Urbino','1506'),
('Sveta obitelj','Raffaello Santi da Urbino','1508'),
('Madonna del Grandca','Raffaello Santi da Urbino','1505'),
('Sveti Juraj i zmaj','Raffaello Santi da Urbino','1506'),
('Sveti Mihael','Raffaello Santi da Urbino','1504'),
('Vizija viteza','Raffaello Santi da Urbino','1504'),
('Samo portret s prijateljem','Raffaello Santi da Urbino','1520'),
('La donna gravida','Raffaello Santi da Urbino','1506'),
('Sveti Ivan Krstitelj u pustinji','Raffaello Santi da Urbino','1516'),
('The deposition','Raffaello Santi da Urbino','1510'),
('David','Donato di Niccolo di Betto Bardi','1440'),
('Sveti Juraj','Donato di Niccolo di Betto Bardi','1445'),
('Zuccone','Donato di Niccolo di Betto Bardi','1425'),
('Judita i Holoferno','Donato di Niccolo di Betto Bardi','1460'),
('Marzocco','Donato di Niccolo di Betto Bardi','1418'),
('Pazzi Madonna','Donato di Niccolo di Betto Bardi','1420'),
('Sveti Juraj i zmaj','Donato di Niccolo di Betto Bardi','nepoznato'),
('Putto s tamburinom','Donato di Niccolo di Betto Bardi','1429');










