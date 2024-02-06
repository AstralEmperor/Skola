CREATE DATABASE `FAKULTET` CHARACTER SET utf8 COLLATE utf8_general_ci;

create TABLE `FAKULTET`.`STUDENT`
(
    StudentID       int PRIMARY KEY AUTO_INCREMENT not null,
    Ime             varchar(20) not null,
    Prezime         varchar(25) not null,
    Generacija      int not null,
    Smer            varchar(3) not null
)

create TABLE `FAKULTET`.``
(
    
)

create TABLE `FAKULTET`.`SMER`
(
    SmerOznaka               varchar(3) PRIMARY KEY not null,
    PunNazivSmera            varchar(50) not null,
    Predmet                  varchar(50) not null,
    UkupnoStudenata          int null
)

create TABLE `FAKULTET`.`PREDMET`
(
    PredmetNaziv               varchar(50) PRIMARY KEY not null,
    Profesor                   varchar(50) not null,
    Asistent                   varchar(20) not null
)

alter TABLE `FAKULTET`.`STUDENT` add constraint pohadja FOREIGN KEY (Smer) references `FAKULTET`.`SMER` (SmerOznaka) on delete restrict on update cascade;
alter TABLE `FAKULTET`.`SMER` add constraint sadrzi FOREIGN KEY (Predmet) references `FAKULTET`.`PREDMET` (PredmetNaziv) on delete restrict on update cascade;



create TABLE `FAKULTET`.`KORISNIK`
(
    KorisnikID                 int PRIMARY KEY AUTO_INCREMENT not null,
    Ime                        varchar(20) not null,
    Prezime                    varchar(25) not null,
    KorisnickoIme              varchar(20) not null,
    Email                      varchar(40) not null,
    Sifra                      varchar(20) not null,
    Ovlascenje                 varchar(20) not null
)

insert into `FAKULTET`.`KORISNIK`(Ime, Prezime, KorisnickoIme, Email, Sifra, Ovlascenje) VALUES
('Marko', 'Kovacevic', 'Mare', 'warriorpronb55@gmail.com', 'marko97', 'ADMIN'),
('Ana', 'Nikolic', 'Anuska', 'ananikol@gmail.com', 'pevam123', 'KORISNIK');

insert into `FAKULTET`.`PREDMET`(PredmetNaziv, Profesor, Asistent) VALUES 
('Softversko Inzenjerstvo 2', 'Ljubica Kazi', 'Vuk Amizic'),
('Informacioni Sistemi 2', 'Biljana Radulovic', 'Milica Mazalica');

insert into `FAKULTET`.`SMER`(SmerOznaka, PunNazivSmera, Predmet, UkupnoStudenata) VALUES 
('IT', 'Informacione Tehnologije', 'Softversko Inzenjerstvo 2', 3),
('SI', 'Softversko Inzenjerstvo', 'Informacioni Sistemi 2', 2);

insert into `FAKULTET`.`STUDENT`(Ime, Prezime, Generacija, Smer) VALUES
('Nina', 'Kalabic', 2020, 'IT'),
('Nenad', 'Simic', 2020, 'IT'),
('Milica', 'Stratimirov', 2019, 'SI'),
('Oliver', 'Zukic', 2018, 'IT'),
('Kristian', 'Omizic', 2020, 'SI');