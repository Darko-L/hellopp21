# c:\skola\xampp\mysql\bin\mysql -uedunova -pedunova < c:\skola\repos\hellopp21\muzej_zavrsni.sql

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
('Putto s tamburinom','Donato di Niccolo di Betto Bardi','1429'),
('Jedači krumpira','Vincent van Gogh','1885'),
('Slikar na putu prema Tarasconu','Vincent van Gogh','1888'),
('Crveni vinograd','Vincent van Gogh','1888'),
('Zvjezdana noć','Vincent van Gogh','1889'),
('Autoportret','Vincent van Gogh','1889'),
('Cafe Terrace an night','Vincent van Gogh','1888'),
('Žuta kuća','Vincent van Gogh','1888'),
('Žitno polje s gavranima','Vincent van Gogh','1890'),
('Čempresi','Vincent van Gogh','1889'),
('Na pragu vječnosti','Vincent van Gogh','1890'),
('Autoportret s odrezanim uhum','Vincent van Gogh','1889'),
('Spavaća soba u Arlesu','Vincent van Gogh','1888'),
('Crveni vinograd','Vincent van Gogh','1888'),
('Par čizama','Vincent van Gogh','1886'),
('Vaza s cvijećem','Vincent van Gogh','1887'),
('Bulb fields','Vincent van Gogh','1883'),
('Siesta','Vincent van Gogh','1890'),
('Dvije krabe','Vincent van Gogh','1889'),
('Suncokreti','Vincent van Gogh','1888'),
('Kraba na leđima','Vincent van Gogh','1888'),
('Sorrow','Vincent van Gogh','1882'),
('Dobri Samatiranac','Vincent van Gogh','nepoznato'),
('Žitno polje s čempresima','Vincent van Gogh','1889'),
('Field with poppies','Vincent van Gogh','1889'),
('Veliki masturbator','Salvador Dali','1929'),
('Postojanost pamćenja','Salvador Dali','1931'),
('Plamteća žirafa','Salvador Dali','1937'),
('Slonovi','Salvador Dali','1948'),
('Melting Watch','Salvador Dali','1954'),
('Sakrament posljednje večere','Salvador Dali','1955'),
('Dezintegracija postojanja','Salvador Dali','1954'),
('Iskušenje svetog Antuna','Salvador Dali','1946'),
('Nebeska Galatea','Salvador Dali','1952'),
('San','Salvador Dali','1937'),
('Zagonetka žudnje','Salvador Dali','1929'),
('Halucinogeni toreador','Salvador Dali','1970'),
('Zagonetka Hitlera','Salvador Dali','1939'),
('Lice rata','Salvador Dali','1940'),
('Metamorfoza narcisa','Salvador Dali','1937'),
('Masturbirajući Hitler','Salvador Dali','1973'),
('Portret mog mrtvog brata','Salvador Dali','1963'),
('Brzo kretanje mrtve prirode','Salvador Dali','1956'),
('Košara s kruhom','Salvador Dali','1945'),
('Žalosna igra','Salvador Dali','1929'),
('Nevidljivi čovjek','Salvador Dali','1933'),
('Ekumenski sabor','Salvador Dali','1960'),
('Krajolik oko Figuerasa','Salvador Dali','1910'),
('Prvi dan proljeća','Salvador Dali','1929'),
('Glava Europe','Salvador Dali','1965'),
('Beskonačna Zagonetka','Salvador Dali','1938'),
('Kip Joe Strummer','Darko Luketić','1998'),
('Kip Mick Jones' ,'Darko Luketić','2000'),
('Slika Paul Simonon','Darko Luketić','1997'),
('SlikaTopper Headon','Darko Luketić','2001'),
('Slika Mickey Gallagher','Darko Luketić','1996'),
('Kip Johnny Rotten','Darko Luketić','1990'),
('Slika Steve Jones','Darko Luketić','1992'),
('Kip Paul Cook','Darko Luketić','1997'),
('Kip Glen Matlock','Darko Luketić','1997'),
('Slika Sid Vicious','Darko Luketić','1989'),
('Kip Branko Črnac Tusta','Darko Luketić','1987'),
('Kip Saša Milovanović','Darko Luketić','1997'),
('Slika Davor Zgrabljić','Darko Luketić','1999'),
('Slika Dejo','Darko Luketić','1998'),
('Podizanje križa','Peter Paul Rubens','1610'),
('Skidanje s križa','Peter Paul Rubens','1614'),
('Saturn proždire svoga sina','Peter Paul Rubens','1636'),
('Parisov sud','Peter Paul Rubens','1639'),
('Pad prokletih','Peter Paul Rubens','1620'),
('Vrt ljubavi','Peter Paul Rubens','1633'),
('Samson i Dalila','Peter Paul Rubens','1610'),
('Poklonstvo kraljeva','Peter Paul Rubens','1609'),
('Danijel u lavljoj jami','Peter Paul Rubens','1615'),
('Medusa','Peter Paul Rubens','1618'),
('Lavlji lov','Peter Paul Rubens','1621'),
('Het Pelsken','Peter Paul Rubens','1638'),
('Vezani Prometej','Peter Paul Rubens','1612'),
('Dva satira','Peter Paul Rubens','1619'),
('Bacchanal','Peter Paul Rubens','1615'),
('Silovanje Europe','Peter Paul Rubens','1629'),
('Bitka s Amazonkama','Peter Paul Rubens','1615'),
('Mars i Rhea Silvia','Peter Paul Rubens','1620'),
('Venerina gozba','Peter Paul Rubens','1637'),
('Rimska milostivost','Peter Paul Rubens','1612');


insert into sponzor(ime,oib,email) values
('Osiječko','12345678910','osijeco@gmail.com'),
('Paulaner','98765432110','paulaner@gmail.com'),
('Heineken','14725893692','heineken@gmail.com'),
('The monks of the Augustinian Order','85236974125','monks@gmail.com'),
('Hofbräuhaus','96325874101','hofbräuhaus@gmail.com'),
('Löwenbräu','78912345610','löwenbräu@gmail.com');

# select * from djelo;

insert into izlozba(naziv,kustos,sponzor) values
('Punkrock',2,1);

insert into clan(izlozba,djelo,pozicija) values
(1,106,'d1'),
(1,107,'d2'),
(1,108,'d3'),
(1,109,'d4'),
(1,110,'d5'),
(1,111,'d6'),
(1,112,'d7'),
(1,113,'d8'),
(1,114,'d9'),
(1,115,'d10'),
(1,116,'d11'),
(1,117,'d12'),
(1,117,'d13'),
(1,119,'d14');










