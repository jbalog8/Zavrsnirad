drop database if exists evidencija;
create database evidencija character set utf8;
#c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < c:\zavrsnirad.sql
use evidencija;


create table evidencije(
    sifra int primary key auto_increment,
    datum date not null,
    prijava boolean,
    zaposlenici int,
    vrste_rada int
);



create table zaposlenici(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
    broj_kartice int,
    odjeli int
   

);

create table odjeli(
    sifra int not null primary key auto_increment,
    naziv varchar(50)
);


create table vrste_rada(
    sifra int not null primary key auto_increment,
    naziv_rada varchar(50)
    
);


alter table evidencije add foreign key (zaposlenici) references zaposlenici(sifra);
alter table zaposlenici add foreign key (odjeli)  references odjeli(sifra);
alter table evidencije add foreign key(vrste_rada) references vrste_rada(sifra);




#select *from odjeli;
#insert into odjeli(sifra,naziv)
#values(null,'Uprava');
#insert into odjeli (sifra,naziv)
#values (null,'Odjel prodaje'), (null,'Odjel nabave'), (null,'Odjel proizvodnje'), (null,'Odjel ljuduskih resursa'), (null,'Odjel financija');

#select * from zaposlenici;
#insert into zaposlenici(sifra, ime, prezime,oib)
#values(null,'Josip','Balog', 48875091792);

#update zaposlenici
#set odjeli =1
#where sifra =1;

#select a.ime, a.prezime, b.naziv 
#from zaposlenici a
#inner join odjeli b on a.odjeli = b.sifra;



#select * from zaposlenici;
#insert into zaposlenici(sifra, ime, prezime,oib)
#values
#(null,'Mia', 'Knežević',47993811262)
#(null,'Lucija','Horvat',39434338223) 
#(null,'Sara','Kovačević',61223515705) 
#(null,'Ema','Pavlović',25855652429) 
#(null,'Nika','Blažević',69637941304) 
#(null,'Marta','Božić',64472574102) 
#(null,'Rita','Lovrić',65976353751)  
#(null,'Mila','Babić',10047877699)  
#(null,'Petra','Marković',72889722653) 
#(null,'Ana','Bošnjak',74072897737) 
#(null,'Luka','Grgić',54632340628)  
#(null,'David','Brkić',57670576616) 
#(null,'Jakov','Filipović',88169482657)  
#(null,'Ivan','Vidović',36593089519)  
#(null,'Petar','Kovačić',87239806467) 
#(null,'Roko','Tomić',45181509646)
#(null,'Matej','Jukić',91489556726) 
#(null,'Noa','Novak',51910380548) 
#(null,'Filip','Martinović',95227831197) 
#(null,'Fran','Petrović',23836264703)

#select * from zaposlenici;
#describe zaposlenici;
#describe odjeli;
#describe evidencija;
#describe vrste_rada;

#select * from vrste_rada;
#insert into vrste_rada (sifra,naziv_rada)
#values(null,'Redovan_rad'),(null,'Prekovremeni_rad'),(null,'Terenski_rad');
