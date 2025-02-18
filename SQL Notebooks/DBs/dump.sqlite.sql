-- TABLE
CREATE TABLE `Bankomat` (
  `ID` number primary key,
  `lokacija` varchar(255) default NULL,
  `datum` varchar(255),
  `zaliha` varchar(100) default NULL
);
CREATE TABLE `Klient` (
  `MBR_k` number primary key,
  `ime` varchar(255) default NULL,
  `prezime` varchar(255) default NULL,
  `adresa` varchar(255) default NULL,
  `datum` varchar(255)
);
CREATE TABLE `Shalterski_rabotnik` (
  `ID` number primary key references `Vraboten`(`ID`) on delete cascade on update cascade
);
CREATE TABLE `Smetka` (
  `MBR_k` number references `Klient`(`MBR_k`) on delete cascade on update cascade,
  `broj` number,
  `valuta` varchar(255) default NULL,
  `saldo` varchar(100) default NULL,
  primary key(`MBR_k`, `broj`)
);
CREATE TABLE "Transakcija_bankomat" (ID number PRIMARY KEY, MBR_k_s number, broj number, ID_b number, datum varchar(255), suma number);
CREATE TABLE "Transakcija_shalter" (ID number PRIMARY KEY, ID_v number, MBR_k number, MBR_k_s number, broj number, datum varchar(255), suma number, tip varchar(255));
CREATE TABLE `Vraboten` (
  `ID` number primary key,
  `ime` varchar(255) default NULL,
  `prezime` varchar(255) default NULL,
  `datum_r` varchar(255),
  `datum_v` varchar(255),
  `obrazovanie` varchar(255) default NULL,
  `plata` varchar(100) default NULL
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
