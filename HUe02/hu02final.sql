create table gesundheitsamt(
	amtid serial primary key,
	strasse varchar(50),
	plz char(5),
	ort varchar(50)
);

create table mitarbeiter(
	mid serial primary key,
	berufstaetigkeit varchar(50),
	strasse varchar(50),
	plz char(5),
	ort varchar(50)
);

create table gha_hat_mit(
	mid int references mitarbeiter(mid),
	amtid int references gesundheitsamt(amtid),
	primary key(amtid,mid)
);


create table quarantaene(
	qid serial primary key,
	von date,
	bis date,
	strasse varchar(50),
	plz char(5),
	ort varchar(50)
);

create table kontrolle(
	qid int references quarantaene(qid),
	mid int references mitarbeiter(mid)
);

create table buerger(
	bid serial primary key,
	name varchar(50),
	age int,
	gender varchar(30),
	strasse varchar(50),
	plz char(5),
	ort varchar(50)
);

create table brgr_geht_in_quarntn(
	bid int references buerger(bid),
	qid int references quarantaene(qid)
);

create table einschraenung(
	eid serial primary key,
	massnahme varchar(50),
	von date,
	bis date,
	mabussgeld NUMERIC(6,2),
	bussgeld NUMERIC(6,2)
);

create table brgr_verstosst_einschrnkng(
	bid int references buerger(bid),
	eid int references einschraenung(eid)
);

create table mitarbtr_verhaengt_einschrnkng(
	mid int references mitarbeiter(mid),
	eid int references einschraenung(eid)
);

create table testzentrum(
	tzid serial primary key,
	strasse varchar(50),
	plz char(5),
	ort varchar(50)
);

create table test(
	tid serial primary key,
	datum date,
	testkit varchar(50),
	ergebnis varchar(10)
);

create table tz_macht_test(
	tid int references test(tid),
	tzid int references testzentrum(tzid)
);

create table impfzentrum(
	izid serial primary key,
	strasse varchar(50),
	plz char(5),
	ort varchar(50)
);

create table impfung(
	chargenummer serial primary key,
	datum date,
	ablaufdatum date
);

create table iz_hat_impf(
	izid int references impfzentrum(izid),
	chargenummer int references impfung(chargenummer)
);

create table impfstoff(
	isid serial primary key,
	art varchar(50),
	hersteller varchar(50)
);


create table impfng_enthaelt_impfstff(
	isid int references impfstoff(isid),
	chargenummer int references impfung(chargenummer)
);

create table brgr_ght_impfztrm(
	bid int references buerger(bid),
	izid int references impfzentrum(izid)
);

create table brgr_ght_testztrm(
	bid int references buerger(bid),
	tzid int references testzentrum(tzid)
);

insert into gesundheitsamt (amtid, strasse, plz, ort) values (1, 'Esker', '435', 'Antaparco');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (2, 'Mifflin', '3136', 'Lapaz');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (3, 'Memorial', '26028', 'Marumori');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (4, 'Esker', '76', 'Sinŭiju');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (5, 'Village', '06', 'Bitin');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (6, 'Park Meadow', '8', 'Sarreguemines');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (7, 'Duke', '215', 'Dadong');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (8, 'Merrick', '7', 'Zbarazh');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (9, 'Stang', '0', 'Bayt Ūmmar');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (10, 'Cambridge', '0414', 'Al Jahrā’');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (11, 'Annamark', '70', 'Krajan Kidul Rojopolo');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (12, 'Cody', '1', 'Czudec');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (13, 'Mayfield', '901', 'Veselynove');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (14, 'Crest Line', '10671', 'Dadukou');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (15, 'Alpine', '9943', 'Aplahoué');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (16, 'Bultman', '91689', 'Cauto Cristo');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (17, 'Lakeland', '8', 'Gembu');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (18, 'Calypso', '8444', 'Yako');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (19, 'Westerfield', '39', 'Hénin-Beaumont');
insert into gesundheitsamt (amtid, strasse, plz, ort) values (20, 'Coleman', '07042', 'Taurisma');

insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (1, 'Support', 'Erie', '4951', 'Rudnya');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (2, 'Training', 'Surrey', '433', 'Hilotongan');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (3, 'Research and Development', 'Talmadge', '200', 'Tögrög');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (4, 'Services', 'Comanche', '384', 'Xinmin');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (5, 'Accounting', 'Rigney', '41834', 'Pancoran');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (6, 'Business Development', 'Maryland', '067', 'Tianyi');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (7, 'Research and Development', 'Bay', '7', 'Beishan');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (8, 'Research and Development', 'Buena Vista', '869', 'Cimongkor');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (9, 'Product Management', 'Golf View', '0444', 'Lâm Thao');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (10, 'Services', 'Shoshone', '52503', 'Igir-igir');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (11, 'Training', 'Nelson', '062', 'Panggungsari');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (12, 'Services', 'Montana', '36', 'Quinarayan');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (13, 'Legal', 'Hollow Ridge', '208', 'Cové');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (14, 'Sales', '6th', '4836', 'Shibata');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (15, 'Research and Development', 'Marcy', '53', 'Saint John');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (16, 'Marketing', 'Amoth', '069', 'Urho');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (17, 'Accounting', '7th', '10700', 'Povenets');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (18, 'Services', 'Holy Cross', '934', 'Marxog');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (19, 'Human Resources', '8th', '64', 'Alvaiázere');
insert into mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) values (20, 'Human Resources', 'Muir', '5464', 'Longotea');

insert into gha_hat_mit (mid, amtid) values (12, 17);
insert into gha_hat_mit (mid, amtid) values (8, 7);
insert into gha_hat_mit (mid, amtid) values (8, 11);
insert into gha_hat_mit (mid, amtid) values (15, 14);
insert into gha_hat_mit (mid, amtid) values (18, 8);
insert into gha_hat_mit (mid, amtid) values (10, 11);
insert into gha_hat_mit (mid, amtid) values (11, 7);
insert into gha_hat_mit (mid, amtid) values (15, 17);
insert into gha_hat_mit (mid, amtid) values (10, 12);
insert into gha_hat_mit (mid, amtid) values (20, 15);
insert into gha_hat_mit (mid, amtid) values (5, 11);
insert into gha_hat_mit (mid, amtid) values (7, 15);
insert into gha_hat_mit (mid, amtid) values (7, 20);
insert into gha_hat_mit (mid, amtid) values (7, 3);
insert into gha_hat_mit (mid, amtid) values (16, 14);
insert into gha_hat_mit (mid, amtid) values (20, 7);
insert into gha_hat_mit (mid, amtid) values (6, 17);
insert into gha_hat_mit (mid, amtid) values (12, 4);
insert into gha_hat_mit (mid, amtid) values (2, 18);
insert into gha_hat_mit (mid, amtid) values (11, 19);

insert into quarantaene (qid, von, bis, strasse, plz, ort) values (1, '2021-04-22', '2021-01-27', 'Farragut', '53579', 'Qīr Moāv');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (2, '2022-06-16', '2020-08-14', 'Burrows', '4185', 'Ranot');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (3, '2020-10-11', '2021-12-31', 'Kensington', '5', 'Istres');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (4, '2020-09-11', '2021-02-26', 'Crest Line', '3720', 'Orléans');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (5, '2022-05-03', '2021-06-12', 'Stuart', '353', 'Kishorganj');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (6, '2020-07-08', '2022-05-22', 'Sherman', '6023', 'Dimitrovgrad');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (7, '2021-04-27', '2020-01-30', 'Sullivan', '665', '’Unābah');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (8, '2021-07-14', '2020-11-10', 'Ramsey', '9', 'Artemivs’k');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (9, '2020-01-30', '2020-03-03', 'Karstens', '78', 'Grand Rapids');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (10, '2021-09-10', '2022-05-25', 'Pepper Wood', '607', 'Dar Chabanne');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (11, '2022-06-26', '2021-08-02', 'Carpenter', '660', 'Lazeshchyna');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (12, '2021-08-21', '2022-05-23', 'Dapin', '62', 'Ayacucho');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (13, '2021-11-06', '2021-09-24', 'Maple', '1', 'Juvisy-sur-Orge');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (14, '2021-02-08', '2021-06-21', 'Algoma', '8714', 'La Soledad');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (15, '2021-06-21', '2020-11-25', 'Monica', '143', 'Lijiapu');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (16, '2020-10-02', '2020-10-05', 'Fieldstone', '95', 'Mendez-Nuñez');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (17, '2021-01-05', '2020-03-02', 'Lerdahl', '04431', 'Donetsk');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (18, '2021-03-01', '2021-01-20', 'Cottonwood', '894', 'Mengxingzhuang');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (19, '2022-03-06', '2022-06-05', 'Oneill', '14', 'Sacsamarca');
insert into quarantaene (qid, von, bis, strasse, plz, ort) values (20, '2021-05-01', '2021-02-04', 'Westend', '826', 'Přibyslav');

insert into kontrolle (qid, mid) values (8, 16);
insert into kontrolle (qid, mid) values (11, 3);
insert into kontrolle (qid, mid) values (13, 12);
insert into kontrolle (qid, mid) values (16, 17);
insert into kontrolle (qid, mid) values (4, 12);
insert into kontrolle (qid, mid) values (16, 1);
insert into kontrolle (qid, mid) values (16, 9);
insert into kontrolle (qid, mid) values (16, 14);
insert into kontrolle (qid, mid) values (10, 16);
insert into kontrolle (qid, mid) values (13, 2);
insert into kontrolle (qid, mid) values (4, 7);
insert into kontrolle (qid, mid) values (14, 5);
insert into kontrolle (qid, mid) values (18, 4);
insert into kontrolle (qid, mid) values (3, 12);
insert into kontrolle (qid, mid) values (15, 12);
insert into kontrolle (qid, mid) values (17, 14);
insert into kontrolle (qid, mid) values (19, 9);
insert into kontrolle (qid, mid) values (18, 16);
insert into kontrolle (qid, mid) values (1, 6);
insert into kontrolle (qid, mid) values (17, 20);

insert into buerger (bid, name, age, gender, strasse, plz, ort) values (1, 'Wes', 29, 'binary', 'Fairview', '2240', 'Rushankou');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (2, 'Minette', 97, 'diverse', 'Marquette', '7', 'Ivatsevichy');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (3, 'Aileen', 37, 'diverse', 'Corscot', '32639', 'Mulyosari');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (4, 'Henrik', 38, 'female', 'Del Mar', '722', 'Huangxikou');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (5, 'Astrid', 64, 'male', 'Kropf', '204', 'Baishuiyang');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (6, 'Leroy', 38, 'female', 'Texas', '19', 'Pop');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (7, 'Lauraine', 32, 'female', 'Sutteridge', '2', 'Sarajevo');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (8, 'Cathleen', 42, 'male', 'Ridgeway', '8543', 'Shibukawa');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (9, 'Duff', 33, 'diverse', 'Hallows', '59', 'Araçatuba');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (10, 'Kai', 99, 'nonbinary', 'Rusk', '54', 'Tržič');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (11, 'Kirk', 94, 'male', 'Carey', '44834', 'Dengtang');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (12, 'Nevin', 70, 'diverse', 'Weeping Birch', '587', 'Zinat');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (13, 'Costa', 12, 'binary', 'Cherokee', '2473', 'Kabir');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (14, 'Anna-diana', 5, 'diverse', 'Dexter', '968', 'Birnin Kebbi');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (15, 'Cecilio', 98, 'female', 'Buell', '88', 'Évosmos');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (16, 'Stepha', 41, 'nonbinary', 'Summer Ridge', '99', 'Qincheng');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (17, 'Othilie', 94, 'nonbinary', 'Morningstar', '6226', 'Shingū');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (18, 'Free', 30, 'male', 'Talisman', '79', 'Gataivai');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (19, 'Byrann', 94, 'female', 'Westend', '639', 'Huanipaca');
insert into buerger (bid, name, age, gender, strasse, plz, ort) values (20, 'Neill', 32, 'binary', 'Goodland', '5', 'Cochrane');

insert into brgr_geht_in_quarntn (bid, qid) values (8, 13);
insert into brgr_geht_in_quarntn (bid, qid) values (4, 4);
insert into brgr_geht_in_quarntn (bid, qid) values (2, 14);
insert into brgr_geht_in_quarntn (bid, qid) values (5, 14);
insert into brgr_geht_in_quarntn (bid, qid) values (15, 14);
insert into brgr_geht_in_quarntn (bid, qid) values (4, 10);
insert into brgr_geht_in_quarntn (bid, qid) values (18, 10);
insert into brgr_geht_in_quarntn (bid, qid) values (9, 19);
insert into brgr_geht_in_quarntn (bid, qid) values (17, 16);
insert into brgr_geht_in_quarntn (bid, qid) values (17, 5);
insert into brgr_geht_in_quarntn (bid, qid) values (10, 10);
insert into brgr_geht_in_quarntn (bid, qid) values (2, 2);
insert into brgr_geht_in_quarntn (bid, qid) values (5, 12);
insert into brgr_geht_in_quarntn (bid, qid) values (14, 7);
insert into brgr_geht_in_quarntn (bid, qid) values (16, 20);
insert into brgr_geht_in_quarntn (bid, qid) values (3, 1);
insert into brgr_geht_in_quarntn (bid, qid) values (5, 13);
insert into brgr_geht_in_quarntn (bid, qid) values (5, 15);
insert into brgr_geht_in_quarntn (bid, qid) values (18, 17);
insert into brgr_geht_in_quarntn (bid, qid) values (12, 14);

insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (1, 'g8p8k7z7', '2022-06-25', '2021-09-12', 6375, 7430);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (2, 'b2i7t4r1', '2022-04-06', '2021-09-14', 1697, 3935);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (3, 'j9d6x4v2', '2021-09-13', '2022-05-02', 8078, 5472);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (4, 'r3i7o0l1', '2021-12-05', '2022-02-22', 7237, 162);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (5, 'u2u1s0v5', '2021-12-29', '2022-06-18', 2757, 3764);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (6, 'x9k7s5p6', '2022-01-23', '2021-08-13', 5796, 3590);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (7, 'm4c2g4h5', '2022-06-09', '2021-08-03', 6972, 4580);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (8, 'w6x1c9x6', '2022-02-11', '2022-01-21', 3154, 7312);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (9, 'e0e2q1d3', '2021-09-29', '2022-02-27', 5457, 460);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (10, 'x9i2v8v0', '2022-03-23', '2021-07-12', 344, 8434);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (11, 'k5p1r8m7', '2022-04-26', '2021-07-30', 244, 4337);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (12, 'k1p5p3n3', '2021-10-24', '2022-03-25', 8914, 4686);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (13, 'i8f5b5a0', '2022-04-28', '2021-07-05', 4634, 8649);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (14, 'w5h3x9m1', '2022-02-05', '2021-10-10', 3881, 2986);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (15, 's8p0o4t8', '2021-07-01', '2022-03-17', 2728, 949);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (16, 'a1y0m3p2', '2022-05-16', '2022-06-18', 4909, 8527);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (17, 'r9r2l3n1', '2021-11-27', '2022-03-18', 7659, 552);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (18, 'p9j3b2p4', '2021-07-09', '2021-08-03', 7020, 1286);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (19, 'r8j8f7h1', '2021-08-19', '2022-03-28', 8548, 3850);
insert into einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) values (20, 'z0q0g9t4', '2021-11-01', '2022-01-22', 5575, 1875);

insert into brgr_verstosst_einschrnkng (bid, eid) values (14, 13);
insert into brgr_verstosst_einschrnkng (bid, eid) values (4, 4);
insert into brgr_verstosst_einschrnkng (bid, eid) values (18, 12);
insert into brgr_verstosst_einschrnkng (bid, eid) values (17, 7);
insert into brgr_verstosst_einschrnkng (bid, eid) values (3, 6);
insert into brgr_verstosst_einschrnkng (bid, eid) values (14, 16);
insert into brgr_verstosst_einschrnkng (bid, eid) values (20, 14);
insert into brgr_verstosst_einschrnkng (bid, eid) values (13, 19);
insert into brgr_verstosst_einschrnkng (bid, eid) values (16, 4);
insert into brgr_verstosst_einschrnkng (bid, eid) values (16, 12);
insert into brgr_verstosst_einschrnkng (bid, eid) values (6, 6);
insert into brgr_verstosst_einschrnkng (bid, eid) values (5, 14);
insert into brgr_verstosst_einschrnkng (bid, eid) values (18, 6);
insert into brgr_verstosst_einschrnkng (bid, eid) values (18, 5);
insert into brgr_verstosst_einschrnkng (bid, eid) values (17, 13);
insert into brgr_verstosst_einschrnkng (bid, eid) values (15, 1);
insert into brgr_verstosst_einschrnkng (bid, eid) values (2, 10);
insert into brgr_verstosst_einschrnkng (bid, eid) values (14, 19);
insert into brgr_verstosst_einschrnkng (bid, eid) values (7, 13);
insert into brgr_verstosst_einschrnkng (bid, eid) values (11, 17);

insert into testzentrum (tzid, strasse, plz, ort) values (1, 'Bonner', '3', 'Trzebinia');
insert into testzentrum (tzid, strasse, plz, ort) values (2, 'Jenna', '954', 'Xiadian');
insert into testzentrum (tzid, strasse, plz, ort) values (3, 'Walton', '80', 'Drakino');
insert into testzentrum (tzid, strasse, plz, ort) values (4, 'School', '58', 'Washington');
insert into testzentrum (tzid, strasse, plz, ort) values (5, 'Londonderry', '5073', 'Alajuelita');
insert into testzentrum (tzid, strasse, plz, ort) values (6, 'Lerdahl', '47372', 'Ubon Ratchathani');
insert into testzentrum (tzid, strasse, plz, ort) values (7, '5th', '99919', 'Qingxi');
insert into testzentrum (tzid, strasse, plz, ort) values (8, 'Coolidge', '51161', 'Al Jamālīyah');
insert into testzentrum (tzid, strasse, plz, ort) values (9, 'Bowman', '66565', 'Nantes');
insert into testzentrum (tzid, strasse, plz, ort) values (10, 'Rieder', '0964', 'Sölvesborg');
insert into testzentrum (tzid, strasse, plz, ort) values (11, 'Oak Valley', '017', 'Sangke');
insert into testzentrum (tzid, strasse, plz, ort) values (12, 'Mcbride', '0559', 'Sâmraông');
insert into testzentrum (tzid, strasse, plz, ort) values (13, 'Stuart', '774', 'Rio Claro');
insert into testzentrum (tzid, strasse, plz, ort) values (14, 'Kipling', '7822', 'Mizque');
insert into testzentrum (tzid, strasse, plz, ort) values (15, 'Darwin', '9', 'Gongnong');
insert into testzentrum (tzid, strasse, plz, ort) values (16, 'Russell', '9', 'Vyshneve');
insert into testzentrum (tzid, strasse, plz, ort) values (17, 'Delladonna', '1152', 'Xinhua');
insert into testzentrum (tzid, strasse, plz, ort) values (18, 'Dwight', '54', 'Smiřice');
insert into testzentrum (tzid, strasse, plz, ort) values (19, 'Karstens', '5', 'Monjas');
insert into testzentrum (tzid, strasse, plz, ort) values (20, 'Burrows', '82', 'Jiangdong');

insert into test (tid, datum, testkit, ergebnis) values (1, '2021-09-12', 'AntiGen', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (2, '2022-06-30', 'PCR', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (3, '2022-06-01', 'PCR', 'positiv');
insert into test (tid, datum, testkit, ergebnis) values (4, '2021-04-17', 'AntiGen', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (5, '2022-03-04', 'AntiGen', 'positiv');
insert into test (tid, datum, testkit, ergebnis) values (6, '2021-07-02', 'PCR', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (7, '2020-12-12', 'PCR', 'positiv');
insert into test (tid, datum, testkit, ergebnis) values (8, '2022-04-30', 'AntiGen', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (9, '2020-09-24', 'AntiGen', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (10, '2021-12-22', 'PCR', 'positiv');
insert into test (tid, datum, testkit, ergebnis) values (11, '2022-01-20', 'PCR', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (12, '2021-03-02', 'PCR', 'positiv');
insert into test (tid, datum, testkit, ergebnis) values (13, '2022-05-25', 'PCR', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (14, '2022-02-19', 'AntiGen', 'positiv');
insert into test (tid, datum, testkit, ergebnis) values (15, '2022-04-08', 'PCR', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (16, '2022-06-23', 'AntiGen', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (17, '2021-03-17', 'AntiGen', 'positiv');
insert into test (tid, datum, testkit, ergebnis) values (18, '2021-12-27', 'PCR', 'positiv');
insert into test (tid, datum, testkit, ergebnis) values (19, '2021-02-19', 'PCR', 'negativ');
insert into test (tid, datum, testkit, ergebnis) values (20, '2021-01-17', 'AntiGen', 'negativ');

insert into tz_macht_test (tid, tzid) values (16, 15);
insert into tz_macht_test (tid, tzid) values (16, 9);
insert into tz_macht_test (tid, tzid) values (9, 16);
insert into tz_macht_test (tid, tzid) values (4, 5);
insert into tz_macht_test (tid, tzid) values (19, 17);
insert into tz_macht_test (tid, tzid) values (4, 5);
insert into tz_macht_test (tid, tzid) values (9, 7);
insert into tz_macht_test (tid, tzid) values (1, 10);
insert into tz_macht_test (tid, tzid) values (14, 3);
insert into tz_macht_test (tid, tzid) values (7, 1);
insert into tz_macht_test (tid, tzid) values (13, 19);
insert into tz_macht_test (tid, tzid) values (9, 4);
insert into tz_macht_test (tid, tzid) values (8, 11);
insert into tz_macht_test (tid, tzid) values (14, 20);
insert into tz_macht_test (tid, tzid) values (14, 14);
insert into tz_macht_test (tid, tzid) values (5, 5);
insert into tz_macht_test (tid, tzid) values (7, 16);
insert into tz_macht_test (tid, tzid) values (1, 4);
insert into tz_macht_test (tid, tzid) values (13, 15);
insert into tz_macht_test (tid, tzid) values (9, 3);

insert into impfzentrum (izid, strasse, plz, ort) values (1, 'Stone Corner', '0616', 'Manaus');
insert into impfzentrum (izid, strasse, plz, ort) values (2, 'Grasskamp', '42100', 'Dayapan');
insert into impfzentrum (izid, strasse, plz, ort) values (3, 'Buell', '4', 'Lianzhou');
insert into impfzentrum (izid, strasse, plz, ort) values (4, 'Redwing', '59', 'Richmond');
insert into impfzentrum (izid, strasse, plz, ort) values (5, 'Huxley', '4', 'Malandag');
insert into impfzentrum (izid, strasse, plz, ort) values (6, 'Roth', '7482', 'Jinbi');
insert into impfzentrum (izid, strasse, plz, ort) values (7, 'Katie', '389', 'Lysekil');
insert into impfzentrum (izid, strasse, plz, ort) values (8, 'Grasskamp', '3', 'Ningxi');
insert into impfzentrum (izid, strasse, plz, ort) values (9, 'Jenna', '8', 'Mali Iđoš');
insert into impfzentrum (izid, strasse, plz, ort) values (10, 'Ryan', '911', 'Votorantim');
insert into impfzentrum (izid, strasse, plz, ort) values (11, 'Gale', '3', 'Mwinilunga');
insert into impfzentrum (izid, strasse, plz, ort) values (12, 'Tomscot', '53503', 'Xinyu');
insert into impfzentrum (izid, strasse, plz, ort) values (13, 'Vermont', '46879', 'Garoua Boulaï');
insert into impfzentrum (izid, strasse, plz, ort) values (14, 'Hoard', '340', 'Strabychovo');
insert into impfzentrum (izid, strasse, plz, ort) values (15, 'Mockingbird', '04', 'Lasehao');
insert into impfzentrum (izid, strasse, plz, ort) values (16, 'Merchant', '10', 'Sanlicheng');
insert into impfzentrum (izid, strasse, plz, ort) values (17, 'Kropf', '71039', 'Lyon');
insert into impfzentrum (izid, strasse, plz, ort) values (18, 'Bowman', '7812', 'Ami');
insert into impfzentrum (izid, strasse, plz, ort) values (19, 'Del Mar', '30', 'Doumuhu');
insert into impfzentrum (izid, strasse, plz, ort) values (20, 'Talisman', '3209', 'Talisay');

insert into impfung (chargenummer, datum, ablaufdatum) values (1, '2019-08-26', '2019-02-11');
insert into impfung (chargenummer, datum, ablaufdatum) values (2, '2020-10-17', '2022-03-25');
insert into impfung (chargenummer, datum, ablaufdatum) values (3, '2020-12-09', '2020-08-07');
insert into impfung (chargenummer, datum, ablaufdatum) values (4, '2020-12-08', '2019-06-08');
insert into impfung (chargenummer, datum, ablaufdatum) values (5, '2019-08-13', '2022-06-11');
insert into impfung (chargenummer, datum, ablaufdatum) values (6, '2019-10-26', '2020-11-05');
insert into impfung (chargenummer, datum, ablaufdatum) values (7, '2019-07-27', '2020-05-16');
insert into impfung (chargenummer, datum, ablaufdatum) values (8, '2021-03-11', '2019-12-12');
insert into impfung (chargenummer, datum, ablaufdatum) values (9, '2019-11-11', '2021-06-08');
insert into impfung (chargenummer, datum, ablaufdatum) values (10, '2020-11-17', '2021-01-17');
insert into impfung (chargenummer, datum, ablaufdatum) values (11, '2020-06-15', '2019-01-30');
insert into impfung (chargenummer, datum, ablaufdatum) values (12, '2020-09-30', '2019-03-31');
insert into impfung (chargenummer, datum, ablaufdatum) values (13, '2021-11-13', '2020-01-18');
insert into impfung (chargenummer, datum, ablaufdatum) values (14, '2020-02-29', '2020-03-05');
insert into impfung (chargenummer, datum, ablaufdatum) values (15, '2020-09-13', '2021-12-23');
insert into impfung (chargenummer, datum, ablaufdatum) values (16, '2021-04-14', '2020-03-17');
insert into impfung (chargenummer, datum, ablaufdatum) values (17, '2019-07-11', '2019-09-13');
insert into impfung (chargenummer, datum, ablaufdatum) values (18, '2020-06-24', '2020-12-18');
insert into impfung (chargenummer, datum, ablaufdatum) values (19, '2021-06-27', '2021-07-05');
insert into impfung (chargenummer, datum, ablaufdatum) values (20, '2022-02-14', '2020-07-27');

insert into iz_hat_impf (izid, chargenummer) values (19, 3);
insert into iz_hat_impf (izid, chargenummer) values (11, 5);
insert into iz_hat_impf (izid, chargenummer) values (18, 14);
insert into iz_hat_impf (izid, chargenummer) values (17, 6);
insert into iz_hat_impf (izid, chargenummer) values (10, 11);
insert into iz_hat_impf (izid, chargenummer) values (16, 20);
insert into iz_hat_impf (izid, chargenummer) values (13, 6);
insert into iz_hat_impf (izid, chargenummer) values (14, 10);
insert into iz_hat_impf (izid, chargenummer) values (17, 19);
insert into iz_hat_impf (izid, chargenummer) values (13, 13);
insert into iz_hat_impf (izid, chargenummer) values (1, 7);
insert into iz_hat_impf (izid, chargenummer) values (4, 8);
insert into iz_hat_impf (izid, chargenummer) values (19, 2);
insert into iz_hat_impf (izid, chargenummer) values (20, 8);
insert into iz_hat_impf (izid, chargenummer) values (2, 2);
insert into iz_hat_impf (izid, chargenummer) values (2, 14);
insert into iz_hat_impf (izid, chargenummer) values (4, 9);
insert into iz_hat_impf (izid, chargenummer) values (11, 9);
insert into iz_hat_impf (izid, chargenummer) values (3, 1);
insert into iz_hat_impf (izid, chargenummer) values (3, 4);

insert into impfstoff (isid, art, hersteller) values (1, 'AstraZeneca', 'Johnson&Johnson');
insert into impfstoff (isid, art, hersteller) values (2, 'BioNTech/Pfizer', 'Johnson&Johnson');
insert into impfstoff (isid, art, hersteller) values (3, 'BioNTech/Pfizer', 'Johnson&Johnson');
insert into impfstoff (isid, art, hersteller) values (4, 'Moderna', 'AstraZeneca');
insert into impfstoff (isid, art, hersteller) values (5, 'BioNTech/Pfizer', 'Johnson&Johnson');
insert into impfstoff (isid, art, hersteller) values (6, 'BioNTech/Pfizer', 'BioNTech/Pfizer');
insert into impfstoff (isid, art, hersteller) values (7, 'AstraZeneca', 'Johnson&Johnson');
insert into impfstoff (isid, art, hersteller) values (8, 'AstraZeneca', 'Moderna');
insert into impfstoff (isid, art, hersteller) values (9, 'BioNTech/Pfizer', 'Moderna');
insert into impfstoff (isid, art, hersteller) values (10, 'Johnson&Johnson', 'AstraZeneca');
insert into impfstoff (isid, art, hersteller) values (11, 'Moderna', 'Johnson&Johnson');
insert into impfstoff (isid, art, hersteller) values (12, 'BioNTech/Pfizer', 'Moderna');
insert into impfstoff (isid, art, hersteller) values (13, 'AstraZeneca', 'AstraZeneca');
insert into impfstoff (isid, art, hersteller) values (14, 'AstraZeneca', 'BioNTech/Pfizer');
insert into impfstoff (isid, art, hersteller) values (15, 'BioNTech/Pfizer', 'AstraZeneca');
insert into impfstoff (isid, art, hersteller) values (16, 'AstraZeneca', 'BioNTech/Pfizer');
insert into impfstoff (isid, art, hersteller) values (17, 'AstraZeneca', 'BioNTech/Pfizer');
insert into impfstoff (isid, art, hersteller) values (18, 'Moderna', 'Johnson&Johnson');
insert into impfstoff (isid, art, hersteller) values (19, 'Moderna', 'Johnson&Johnson');
insert into impfstoff (isid, art, hersteller) values (20, 'Johnson&Johnson', 'AstraZeneca');

insert into impfng_enthaelt_impfstff (isid, chargenummer) values (2, 15);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (17, 14);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (9, 19);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (9, 19);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (2, 4);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (12, 8);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (16, 17);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (9, 4);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (13, 12);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (7, 16);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (10, 9);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (9, 12);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (1, 17);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (15, 16);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (12, 11);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (3, 19);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (19, 11);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (3, 11);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (11, 20);
insert into impfng_enthaelt_impfstff (isid, chargenummer) values (2, 9);

insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (16, 1);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (12, 14);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (19, 1);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (15, 9);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (15, 13);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (20, 13);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (3, 14);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (15, 10);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (3, 13);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (18, 6);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (2, 11);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (7, 20);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (13, 19);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (6, 19);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (19, 16);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (15, 12);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (3, 16);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (4, 5);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (12, 12);
insert into mitarbtr_verhaengt_einschrnkng (mid, eid) values (7, 18);

insert into brgr_ght_impfztrm (bid, izid) values (4, 1);
insert into brgr_ght_impfztrm (bid, izid) values (7, 11);
insert into brgr_ght_impfztrm (bid, izid) values (15, 13);
insert into brgr_ght_impfztrm (bid, izid) values (13, 17);
insert into brgr_ght_impfztrm (bid, izid) values (16, 13);
insert into brgr_ght_impfztrm (bid, izid) values (16, 19);
insert into brgr_ght_impfztrm (bid, izid) values (17, 9);
insert into brgr_ght_impfztrm (bid, izid) values (5, 5);
insert into brgr_ght_impfztrm (bid, izid) values (3, 18);
insert into brgr_ght_impfztrm (bid, izid) values (20, 17);
insert into brgr_ght_impfztrm (bid, izid) values (5, 11);
insert into brgr_ght_impfztrm (bid, izid) values (2, 15);
insert into brgr_ght_impfztrm (bid, izid) values (20, 13);
insert into brgr_ght_impfztrm (bid, izid) values (5, 18);
insert into brgr_ght_impfztrm (bid, izid) values (3, 18);
insert into brgr_ght_impfztrm (bid, izid) values (5, 15);
insert into brgr_ght_impfztrm (bid, izid) values (20, 7);
insert into brgr_ght_impfztrm (bid, izid) values (19, 12);
insert into brgr_ght_impfztrm (bid, izid) values (2, 18);
insert into brgr_ght_impfztrm (bid, izid) values (14, 8);

insert into brgr_ght_testztrm (bid, tzid) values (10, 8);
insert into brgr_ght_testztrm (bid, tzid) values (16, 7);
insert into brgr_ght_testztrm (bid, tzid) values (18, 14);
insert into brgr_ght_testztrm (bid, tzid) values (19, 14);
insert into brgr_ght_testztrm (bid, tzid) values (8, 7);
insert into brgr_ght_testztrm (bid, tzid) values (7, 13);
insert into brgr_ght_testztrm (bid, tzid) values (9, 3);
insert into brgr_ght_testztrm (bid, tzid) values (20, 11);
insert into brgr_ght_testztrm (bid, tzid) values (9, 5);
insert into brgr_ght_testztrm (bid, tzid) values (10, 10);
insert into brgr_ght_testztrm (bid, tzid) values (10, 7);
insert into brgr_ght_testztrm (bid, tzid) values (18, 2);
insert into brgr_ght_testztrm (bid, tzid) values (10, 1);
insert into brgr_ght_testztrm (bid, tzid) values (2, 17);
insert into brgr_ght_testztrm (bid, tzid) values (8, 6);
insert into brgr_ght_testztrm (bid, tzid) values (7, 1);
insert into brgr_ght_testztrm (bid, tzid) values (14, 10);
insert into brgr_ght_testztrm (bid, tzid) values (5, 1);
insert into brgr_ght_testztrm (bid, tzid) values (13, 20);
insert into brgr_ght_testztrm (bid, tzid) values (20, 3);

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

/*select count(m.mid) from einschraenkung e 
inner join  mitarbeiter m
on m.mid = e.mid
inner join einschraenkung ee
on e.mid =ee.mid 
where  m.mid=ee.mid and e.mid <> ee.mid ;*/

select m.mid,m.name,count(m.mid)
from einschraenkung e
inner join mitarbeiter m
using(mid)
where m.mid = e.mid
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

