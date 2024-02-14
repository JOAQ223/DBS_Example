create table mitarbeiter(pnr serial primary key,name varchar(25),abteilung varchar(50));
create table projektmitarbeiter(pnr serial,projektnr serial,taetigkeit varchar(50),stunden int,primary key (pnr,projektnr));
create table projekt(projektnr serial primary key,projektname varchar(30),beginndatum date,budget real);
alter table projektmitarbeiter add CONSTRAINT pmaconst foreign key(pnr) REFERENCES mitarbeiter(pnr);
alter table projektmitarbeiter add CONSTRAINT projektconst foreign key(projektnr) REFERENCES projekt(projektnr);


/**1. **/
select projektname,budget from projekt where budget >= 175000 order by budget desc;

/**2. **/
select projektname,'Groesstes Budget' as Budget from projekt where budget =(select max(budget) from projekt) union select projektname,'Kleinstes Budget' from projekt where budget =(select min(budget)from projekt);

/**3. **/
select sum(budget) Gesamtbudget from projekt;

/**4. **/
select name from projektmitarbeit pm inner join mitarbeiter m on pm.pnr = m.pnr inner join projekt p on pm.projektnr=p.projektnr where abteilung='IT-Anwendungen' and projektname='Mobile Busi-ness Intelligence';

/**5. **/
select projektname,count(pm.pnr) from projektmitarbeit pm inner join projekt p on p.projektnr = pm.projektnr inner join mitarbeiter m on pm.pnr = m.pnr GROUP by projektname;

/**6. **/
select projektname from projekt p inner join projektmitarbeit pm ON pm.projektnr = p.projektnr where pm.taetigkeit <> 'Projektleiter';
select distinct projekt.projektname from projektmitarbeit left join projekt on projekt.projektnr = projektmitarbeit.projektnr where projektmitarbeit.projektnr not in(select projektnr from projektmitarbeit where taetigkeit like 'Projektleiter');

/**7. **/
select projektmitarbeit.pnr, mitarbeiter.name, sum(projektmitarbeit.stunden) 
from projektmitarbeit 
left join projekt on projekt.projektnr = projektmitarbeit.projektnr 
join mitarbeiter on mitarbeiter.pnr = projektmitarbeit.pnr
where projektmitarbeit.projektnr in(
	select projektnr 
	from projektmitarbeit
	where taetigkeit like 'Projektleiter') 
and projekt.budget > 175000
and taetigkeit like 'Projektleiter'
group by projektmitarbeit.pnr, mitarbeiter.name;

/**8. **/
select name from mitarbeiter where name like 'N%' or name like 'R%';

/**9. **/
select projektname,budget uerspruengliche_Budget,
case
WHEN projektname='Mobile Business Intelligence'
then budget*1.08
when beginndatum between '2016-01-01' and '2016-12-31'
then budget*1.04
else budget
end neue_Budget
from projekt
where
projektname='Mobile Business Intelligence'
or beginndatum between '2016-01-01' and '2016-12-31'
order by projektname asc;


select projekt,budget*1.08 
WHERE projektname = 'Mobile Business Intelligence';

set budget = budget*1.04
WHERE projektname != 'Mobile Business Intelligence'
AND projekt.beginndatum BETWEEN '2016-01-01' AND '2016-12-31';

/**10. **/
select projektname,name,pm.taetigkeit 
from projekt p 
inner join projektmitarbeit pm on p.projektnr=pm.projektnr 
inner join mitarbeiter m on m.pnr=pm.pnr 
order by projektname,name;
