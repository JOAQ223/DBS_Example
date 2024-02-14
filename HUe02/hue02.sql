create table gesundheitsamt(amtid serial primary key not null,addid int);
create table mitarbeiter(mid serial primary key,addid int,berufstaetigkeit varchar(50));
create table adresse(addid int primary key,strasse varchar(50),plz int,ort varchar(50));
alter table gesundheitsamt add CONSTRAINT addid foreign key(addid) REFERENCES adresse(addid);
alter table mitarbeiter add CONSTRAINT addid_2 foreign key(addid) REFERENCES adresse(addid);
create table quarantaene(qid serial primary key,mid serial,addid int,von date,bis date);
alter table quarantaene add CONSTRAINT addid_3 foreign key(addid) REFERENCES adresse(addid);
alter table quarantaene add constraint mid foreign key (mid) references mitarbeiter(mid);
create table buerger(ptid serial primary key,gender varchar(20),name varchar(50),imf_id serial,t_id serial,age smallint,addid int);
create table Einschraenkung(massnahme serial primary key,ptid serial,mid serial,von timestamp,bis timestamp,maxbussgeld int);
alter table einschraenkung add constraint mid_2 foreign key (mid) references mitarbeiter(mid);
alter table einschraenkung add constraint ptid foreign key (ptid) references buerger(ptid);
create table impfstoff(impfid serial primary key,art varchar(50),hersteller varchar(50));
create table impfung(chargenr int primary key,impfid serial,datum date,ablaufdatum date);
alter table impfung add constraint impfid foreign key (impfid) references impfstoff(impfid);
create table test(tid serial primary key,t_rslt varchar(20),ptid serial,ttype varchar(50),preis int,datum date);
alter table test add constraint ptid foreign key (ptid) references buerger(ptid);
alter table buerger add constraint addid_brgr foreign key (addid) references adresse(addid);


alter table quarantaene add column ptid serial; //wichtig
select * from quarantaene;
alter table quarantaene add constraint quarantaene_buerger foreign key (ptid) references buerger(ptid)

/******************************************************************/

alter table test add column testkit varchar(20);
alter table einschraenkung add column bussgeld int;

--1. Die Anzahl der Menschen ,die Quarantäne im bestimmten Ort sind.
select count(bid) 
from buerger b 
join brgr_geht_in_quarntn using(bid)
join quarantaene q using(qid)
where q.ort = 'La Soledad';

--2. in welcher Orte gab es Einschänkungen Verstöße.
select b.ort
from einschraenung e
join brgr_verstosst_einschrnkng bve using(eid)
join buerger b using(bid)
where e.bussgeld >0 
GROUP BY b.ort;


--3.Welcher Impfstoff wurde am häufigsten genutzt ?
create view numofimpfstoff(art,numofimpf) as
select i.art,count(i.isid) as "numofimpf"
from impfstoff i
group by i.art;

select art,numofimpf
from numofimpfstoff n
where numofimpf=(select max(numofimpf) from numofimpfstoff)
group by art,numofimpf;


--4. Welche Mitarbeiter welche Bussgeld verhaengt hat?

select m.mid,m.ort,m.plz,e.massnahme,e.bussgeld
from mitarbeiter m 
join mitarbtr_verhaengt_einschrnkng mve on mve.mid = m.mid
join einschraenung e ON e.eid = mve.eid
where e.bussgeld > 0
group by m.mid,e.massnahme,e.bussgeld;


--5. welche Patient welche Impfung bekommen hat?

select b.bid,b.name,iz.izid,ib.art from buerger b 
join brgr_ght_impfztrm biz ON biz.bid = b.bid --Buerger geht in Impfzentrum on bid
join impfzentrum iz ON iz.izid = biz.izid  -- on izid
join iz_hat_impf ihi ON ihi.izid = iz.izid --Imfzentrum hat Imfung -- on izid
join impfung i on ihi.chargenummer=i.chargenummer -- on chargenummer
join impfng_enthaelt_impfstff iei on i.chargenummer = iei.chargenummer -- on chargenummer
join impfstoff ib on iei.isid = ib.isid; --on isid


--6. Risiko Patienten , die Corona haben in bestimmter Stadt
select b.name,count(b.bid) 
from buerger b 
join brgr_geht_in_quarntn bq ON bq.bid = b.bid
join quarantaene q ON q.qid = bq.qid
where b.age>=60 and q.ort in( 
	select q.ort
	from quarantaene q
	where ort='Marburg'
)
group by b.name;


--7. Anzahl der Einschraenngen per Mitarbeiter

--7. Anzahl der Einschraenngen per Mitarbeiter

select m.mid, m.strasse, count (m.mid)
from einschraenung e
join mitarbtr_verhaengt_einschrnkng mve ON mve.eid = e.eid
join mitarbeiter m on mve.mid = m.mid
group by m.mid;


--8. Welcher Impfstoff wurde am häufigsten genutzt?

/*
create view number_of_impf (art , nr_impfung) as
select a.art,count(a.art) as "nr_impfung"
from impfstoff a
group by a.art;
*/
select art,nr_impfung
from number_of_impf
where nr_impfung=(select max(nr_impfung) from number_of_impf)
group by art,nr_impfung;



/**************************************************/

