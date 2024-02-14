https://feedback.mni.thm.de/courses/180
hü2 
1. pflichtaufgabe: geschäftsreis

sql abfrage

1)
select pnr, name
from mitarbeiter
where abtnr = 1
order by pnr 

2) 
select pnr, name, gehalt
from mitarbeiter
where gehalt=(select min(gehalt)from mitarbeiter)

3)
select hnr, hname, kategorie, plz, ort
from hotel
where hname like '%city%' and plz between 70000 and 78000

4) 
select mitarbeiter.name, mitarbeiter.pnr, count(reisen.mitarbeiter), round(avg(reisen.kosten),2)
from mitarbeiter 
inner join reisen on mitarbeiter.pnr = reisen.mitarbeiter
group by reisen.mitarbeiter, mitarbeiter.name, mitarbeiter.pnr
order by name desc

5)
select mitarbeiter.name
from mitarbeiter
inner join reisen on reisen.mitarbeiter = mitarbeiter.pnr
inner join hotel on hotel.hnr = reisen.hotel
where ort like 'hamburg'
group by pnr

6)
select a1.name, a1.pnr, a3.abtname, a2.kosten, beginndatum
from mitarbeiter a1, reisen a2, abteilung a3
where pnr = mitarbeiter and kosten = (select max(kosten) from reisen) and a1.abtnr = a3.abtnr


7)
select a1.mitarbeiter, a2.mitarbeiter, a3.hname, a2.beginndatum
from reisen a1, reisen a2, hotel a3
where a3.hnr = a1.hotel and a1.beginndatum = a2.beginndatum and a1.mitarbeiter != a2.mitarbeiter and a1.hotel = a2.hotel
order by a1.mitarbeiter, a2.mitarbeiter

8)
select hotel.hnr, hotel.hname
from reisen
join hotel on reisen.hotel = hotel.hnr
group by reisen.hotel, hotel.hnr, hotel.hname
having count(hotel) > 1

9)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
select hotel.hnr, hotel.hname, sum(reisen.dauer), round(avg(kosten),2)
from reisen
join hotel on reisen.hotel = hotel.hnr
group by reisen.hotel, hotel.hnr, hotel.hname
having sum(reisen.dauer) > 0
order by hotel.hnr asc

richtig: 
select hotel.hnr, hotel.hname, sum(reisen.dauer) as summenaechte, round(sum(reisen.kosten)/sum(reisen.dauer),2)
from reisen
join hotel on hotel.hnr = reisen.hotel
group by hotel.hnr
order by hotel.hnr

10)
select count(hnr)
from hotel 
where hnr not in (select distinct hotel from reisen)

aufgabe 2 

sql abfrage

1) 
select projektname, budget
from projekt
where budget >= 175000
order by budget desc

2)
select projektname , 'groesstes budget' as budget 
from projekt
where budget = (select max(budget)from projekt)
union select projektname , 'kleinstes budget'
from projekt
where budget = (select min(budget)from projekt);

3)
select sum(budget)
from projekt

4)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
select name
from mitarbeiter
where abteilung = 'it-anwendung' and pnr in 
	(select pnr from projektmitarbeit where projektnr = 
	 (select projektnr from projekt where projektname = 'mobile business intelligence'))
	 
richtig:
select name 
from mitarbeiter  
where abteilung='it-anwendungen' and pnr 
in(select pnr from projektmitarbeit 
where projektnr=(select projektnr from projekt where projektname = 'mobile business intelligence'));
	 
5)
select projektname, count(projektmitarbeit.projektnr)
from projekt
join projektmitarbeit on projekt.projektnr = projektmitarbeit.projektnr
group by projektname

6)
select distinct projekt.projektname
from projektmitarbeit
left join projekt on projekt.projektnr = projektmitarbeit.projektnr 
where projektmitarbeit.projektnr not in(select projektnr 
	from projektmitarbeit
	where taetigkeit like 'projektleiter')

7)
select projektmitarbeit.pnr, mitarbeiter.name, sum(projektmitarbeit.stunden)
from projektmitarbeit
left join projekt on projekt.projektnr = projektmitarbeit.projektnr 
join mitarbeiter on mitarbeiter.pnr = projektmitarbeit.pnr
where projektmitarbeit.projektnr in(select projektnr 
	from projektmitarbeit
	where taetigkeit like 'projektleiter') 
and projekt.budget > 175000
and taetigkeit like 'projektleiter'
group by projektmitarbeit.pnr, mitarbeiter.name

8)
select name
from mitarbeiter
where name like 'n%' or name like 'r%'

9)

update projekt 
set budget = budget*1.08 
where projektname = 'mobile business intelligence';
update projekt
set budget = budget*1.04
where projektname != 'mobile business intelligence'
and projekt.beginndatum between '2016-01-01' and '2016-12-31';

10)
select projekt.projektname, mitarbeiter.name, projektmitarbeit.taetigkeit
from projektmitarbeit
join projekt on projekt.projektnr = projektmitarbeit.projektnr
join mitarbeiter on mitarbeiter.pnr = projektmitarbeit.pnr
order by projekt.projektname, mitarbeiter.name asc;
