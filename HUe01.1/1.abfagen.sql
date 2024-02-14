CREATE TABLE Mitarbeiter(PNr serial PRIMARY KEY,Name VARCHAR,AbNr INT,Gehalt REAL,FOREIGN KEY(AbNr) REFERENCES Abteilung(AbNr));
CREATE TABLE Abteilung(AbNr serial PRIMARY KEY,AbtName TEXT);
CREATE TABLE HOTEL(HNr INT PRIMARY KEY,HName TEXT,Kategorie TEXT,PLZ INT,Ort TEXT);
CREATE TABLE Reisen(mitarbeiter serial,hotel serial,Beginndatum DATE,Dauer int,Kosten int,PRIMARY KEY(mitarbeiter,hotel,Beginndatum));
drop table mitarbeiter;
drop table Abteilung;
drop table HOTEL;
drop table reisen;

ALTER Table reisen ADD CONSTRAINT pnr_CONSTRAINT FOREIGN KEY (mitarbeiter) REFERENCES mitarbeiter(pnr);
ALTER Table reisen ADD CONSTRAINT 
ALTER TABLE mitarbeiter ADD CONSTRAINT mitarbeitconst FOREIGN KEY (abnr) REFERENCES abteilung (abnr);
ALTER TABLE mitarbeiter RENAME COLUMN abnr TO abtnr;
alter table reisen add constraint hotel_constraint FOREIGN KEY (hotel) REFERENCES hotel(hnr);

/**1. alle Mitarbeiter listen & aufsteigend sortieren **/
select pnr,name from mitarbeiter order by pnr asc; 
select pnr,name from mitarbeiter where abtnr=(select abtnr from abteilung where abtname='Softwareentwicklung') order by pnr asc;
/**2. **/
select pnr,name,gehalt from mitarbeiter where gehalt = (select min(gehalt) from mitarbeiter);
/**3. **/
select hnr,hname,kategorie,plz,ort from hotel where hname like '%city%' and plz between 70000 and 78000;
/**4. **/
select name,m.pnr from mitarbeiter m inner join reisen r on m.pnr=r.pnr where m.pnr=r.pnr group by m.pnr order by name desc;
select count(hotel) Anzahl_der_reisen from reisen r inner join mitarbeiter m on r.mitarbeiter=m.pnr ;
select mitarbeiter, count(mitarbeiter) Anzahl_der_reisen from reisen group by mitarbeiter; //ein Shritt
select kosten,sum(kosten) summe,(kosten/count(mitarbeiter)) durch from reisen group by kosten;
select name,mitarbeiter,count(mitarbeiter) anzahl_der_reisen from reisen r inner join mitarbeiter m on r.mitarbeiter=m.pnr GROUP BY mitarbeiter,name order by name desc;
alter table reisen ALTER COLUMN dauer type int;
/**
select 
m.name,m.pnr,count(r.mitarbeiter) anzahl_der_reisen,r.kosten/count(r.mitarbeiter) durchschnittlichekosten 
from mitarbeiter m 
join reisen r 
on m.pnr=r.mitarbeiter 
group by m.name,m.pnr,r.kosten 
order by m.name desc;
***/



select mitarbeiter.name, mitarbeiter.pnr, count(reisen.mitarbeiter), ROUND(AVG(reisen.kosten),2) from mitarbeiter inner join reisen on mitarbeiter.pnr = reisen.mitarbeiter group by reisen.mitarbeiter, mitarbeiter.name, mitarbeiter.pnr order by name desc;

/**5. **/
select name from mitarbeiter m inner join reisen r on m.pnr=r.pnr inner join hotel h on r.hnr=h.hnr where h.ort='Hamburg';
select DISTINCT name from mitarbeiter ;
select hname,kategorie,plz from hotel where ort = 'Hamburg';
select hname from hotel where ort = 'Hamburg';
select mitarbeiter.pnr,mitarbeiter.name from mitarbeiter,hotel where hotel.ort='hamburg'; /**nicht fertig**/
/**6. **/
select reisen.kosten,mitarbeiter.name from reisen,mitarbeiter where reisen.kosten=(select max(kosten) from reisen);
/**7. **/

select ra.mitarbeiter,rb.mitarbeiter,h.hname,ra.beginndatum
from reisen ra, reisen rb
join hotel h on rb.hotel = h.hnr
where ra.beginndatum=rb.beginndatum
and ra.hotel = rb.hotel
and ra.mitarbeiter != rb.mitarbeiter;

/**8. **/

select hotel,case when count(hotel)>=2 then count(hotel) end buchung from reisen group by hotel;
select hnr,hname from hotel h join reisen r on h.hnr=r.hotel group by hnr having count(hnr) in (select count(hotel) from reisen having count(hotel)>=2);
select hnr,hname,count(hotel) from hotel h join reisen r on h.hnr=r.hotel  GROUP BY hnr;

select distinct ra.hotel,h.hname from reisen ra,reisen rb join hotel h on rb.hotel=h.hnr;
/**
SELECT distinct a.hotel  as hnr ,h.hname
select hnma mit dem hnr , inner 
FROM reisen a, reisen b
join hotel  h on  b.hotel = h.hnr;***/
/*
select hotel.hnr, hotel.hname
from reisen
join hotel on reisen.hotel = hotel.hnr
group by reisen.hotel, hotel.hnr, hotel.hname
having count(hotel) >= 2;*/

/**9. **/
/**
select h.hnr, h.hname, sum(r.dauer) as verbtachte_naechte, round(sum(r.kosten) / sum(r.dauer), 2) durchschnittliche_kosten_pro_nacht
from reisen r
inner join hotel h on h.hnr = r.hotel
group by h.hnr
order by h.hnr;
**/
/**10. **/
select count(hnr) from hotel h left join reisen r on h.hnr=r.hotel where r.hotel is null;

