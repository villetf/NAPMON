CREATE TABLE attractions (
   a_id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(255) NOT NULL UNIQUE,
   build_year INT,
   manufacturer VARCHAR(255),
   height INT,
   rail_length INT,
   ride_time INT,
   max_speed INT,
   child_attraction TINYINT,
   PRIMARY KEY(a_id)
);

CREATE TABLE attraction_metrics (
   time DATETIME,
   a_id INT NOT NULL,
   queue_time INT NOT NULL,
   PRIMARY KEY(time, a_id),
   FOREIGN KEY (a_id) REFERENCES attractions(a_id)
);

INSERT INTO attraction_metrics_new (a_id, queue_time, closing_time, time)
SELECT a_id, queue_time, closing_time, time FROM attraction_metrics;

select * from 'attraction_metrics' where (time_field betweeen '2023-07-02 21:00:00' and '2023-07-03 07:57:00');

SELECT * FROM `objects`
WHERE  (date_field BETWEEN '2010-01-30 14:15:55' AND '2010-09-29 10:15:55')


INSERT INTO attraction_metrics (a_id, queue_time, closing_time)
VALUES ($id3id, $id3time, $id3close);

INSERT INTO attractions(name, build_year, manufacturer, height, rail_length, ride_time, max_speed, child_attraction)
VALUES ('Monster', 2021, 'Bolliger & Mabillard', 34, 700, 120, 90, 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Insane', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Fritt Fall & Fritt Fall Tilt', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Twister', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Eclipse', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Pop-Expressen', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Kvasten', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Vilda Musen', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Jetline', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Ikaros', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Katapulten', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('House of Nightmares', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Kättingflygaren', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Flygande mattan', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Flygande Elefanterna', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Kärlekstunneln', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Cirkuskarusellen', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Bläckfisken', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Lyktan', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Lustiga Huset', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Nyckelpigan', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Blå Tåget', 0);

INSERT INTO attractions(name, child_attraction)
VALUES ('Rock-Jet', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Tekopparna', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Barnradiobilarna', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Tuff-Tuff tåget', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Veteranbilarna', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Lilla Pariserhjulet', 1);

INSERT INTO attractions(name, child_attraction)
VALUES ('Pettson och Findus värld', 1);







































INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, ride_time, max_speed, child_attraction)
VALUES (3, 'Balder', 2003, 'Intamin', 36, 1070, 128, 90, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, ride_time, max_speed, child_attraction)
VALUES (6, 'Flumeride', 1973, 'ARROW Development Company', 23, 610, 240, 60, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, max_speed, child_attraction)
VALUES (15, 'Radiobilarna', 2010, 'Preston & Barbieri', 0, 7, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, rail_length, ride_time, max_speed, child_attraction)
VALUES (16, 'Farfars Bil', 2013, 'Metallbau Emmeln', 222, 167, 5, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, ride_time, child_attraction)
VALUES (18, 'Kållerado', 1997, 'Intamin', 0, 560, 330, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, ride_time, child_attraction)
VALUES (28, 'Jukebox', 2012, 'Gerstlauer Amusement Rides', 5, 120, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, ride_time, child_attraction)
VALUES (31, 'Slänggungan', 2018, 'Zierer Karusell und Fahrzeugbau', 13, 139, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (32, 'Kaffekoppen', 1985, 'Heinrich Mack GmbH & Co', 0, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, ride_time, max_speed, child_attraction)
VALUES (33, 'Rabalder', 2009, 'Zierer Karusell und Spezialmaschinenbau', 9, 222, 90, 40, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, child_attraction)
VALUES (36, 'Morotsresan', 2019, 'Heinrich Mack GmbH & Co', 0, 182, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (39, 'Fisketuren', 1988, 'Heinrich Mach Gmbh & Co', 0, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (42, 'Skepp o skoj', 2012, 'Liseberg', 0, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, child_attraction)
VALUES (45, 'Kristallsalongen', 1961, 'Liseberg', 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, child_attraction)
VALUES (47, 'Gasten', 1998, 'Farmer Ltd', 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (55, 'Lilla Lots', 2006, 'Antonio Zamperla S.p.A.', 5, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, ride_time, max_speed, child_attraction)
VALUES (56, 'Uppswinget', 2007, 'S&S Power', 40, 60, 80, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, ride_time, max_speed, child_attraction)
VALUES (57, 'Lisebergbanan', 1987, 'Zierer Karusell und Fahrzeugfabrik', 65, 1340, 170, 80, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, ride_time, child_attraction)
VALUES (61, 'Hanghai', 2009, 'Antonio Zamperla S.p.A.', 17, 140, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, ride_time, max_speed, child_attraction)
VALUES (64, 'AtmosFear', 2011, 'Intamin', 116, 120, 110, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (69, 'Lisebergshjulet', 2012, 'Dutch Wheels B.V.', 60, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (71, 'Cyklonen', 2013, 'Antonio Zamperla S.p.A.', 5, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (72, 'Hissningen', 2013, 'Zierer', 12, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (73, 'Hoppalång', 2013, 'Antonio Zamperla S.p.A.', 3, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (74, 'Högspänningen', 2013, 'Bertazzon 3B Srl', 8, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, max_speed, child_attraction)
VALUES (75, 'Kaninlandsbanan', 2013, 'ETF Ride system', 16, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, max_speed, child_attraction)
VALUES (76, 'Stampbanan', 2013, 'Preston & Barbieri', 3, 54, 20, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (77, 'Tuta & Kör', 2013, 'Preston & Barbieri', 0, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (78, 'Flygis', 2013, 'Antonio Zamperla S.p.A.', 0, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (79, 'Bushållplatsen', 2013, 'Liseberg', 0, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, ride_time, max_speed, child_attraction)
VALUES (80, 'Helix', 2014, 'Mack Rides', 52, 1381, 130, 100, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, ride_time, child_attraction)
VALUES (83, 'Mechanica', 2015, 'Zierer Karussell- und Spezialmaschinenbau', 30, 180, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (87, 'Aerospin', 2016, 'Gerstlauer Amusement Rides', 35, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, child_attraction)
VALUES (88, 'Blomsterkarusellen', 2016, 'Bertazzon 3B Srl', 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, child_attraction)
VALUES (89, 'Barnens Paradis', 2016, 'Monstrum ApS', 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, ride_time, max_speed, child_attraction)
VALUES (92, 'Loke', 2017, 'Intamin', 42, 100, 100, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, ride_time, max_speed, child_attraction)
VALUES (96, 'Valkyria', 2018, 'Bolliger & Mabillard', 47, 750, 80, 105, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, rail_length, ride_time, max_speed, child_attraction)
VALUES (103, 'Underlandet', 2020, 'Gosetto', 202, 200, 4, 0);

INSERT INTO attractions(a_id, name, build_year, manufacturer, child_attraction)
VALUES (104, 'Turbo', 2022, 'Technical Park', 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, child_attraction)
VALUES (105, 'Tempus', 2022, 'Antonio Zamperla S.p.A.', 7, 1);

INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, ride_time, max_speed, child_attraction)
VALUES (107, 'Luna', 2023, 'Vekoma', 33, 242, 60, 68, 0);


update attractions SET manufacturer = 'Farmer Ltd' WHERE a_id in (47);
update attractions SET manufacturer = 'Gerstlauer Amusement Rides' WHERE a_id in (28,87);
update attractions SET manufacturer = 'Gosetto' WHERE a_id in (103);
update attractions SET manufacturer = 'Intamin' WHERE a_id in (3,18,64,92);
update attractions SET manufacturer = 'Liseberg' WHERE a_id in (42,45,79);
update attractions SET manufacturer = 'Metallbau Emmeln' WHERE a_id in (16);
update attractions SET manufacturer = 'Monstrum ApS' WHERE a_id in (89);
update attractions SET manufacturer = 'Preston & Barbieri' WHERE a_id in (15,76,77);
update attractions SET manufacturer = 'S&S Power' WHERE a_id in (56);
update attractions SET manufacturer = 'Technical Park' WHERE a_id in (104);
update attractions SET manufacturer = 'Vekoma' WHERE a_id in (107);
update attractions SET manufacturer = 'Zierer Karussell und Fahrzeugfabrik' WHERE a_id in (72,31,57,33,83);

UPDATE attractions SET latitude = '57.693457' WHERE a_id = 3;UPDATE attractions SET longitude = '11.996254' WHERE a_id = 3;

UPDATE attractions SET latitude = '57.69483' WHERE a_id = 16;UPDATE attractions SET longitude = '11.99442' WHERE a_id = 16;

UPDATE attractions SET latitude = '57.69397' WHERE a_id = 18;UPDATE attractions SET longitude = '11.99605' WHERE a_id = 18;

UPDATE attractions SET latitude = '57.69377' WHERE a_id = 28;UPDATE attractions SET longitude = '11.99428' WHERE a_id = 28;

UPDATE attractions SET latitude = '57.69311' WHERE a_id = 31;UPDATE attractions SET longitude = '11.99351' WHERE a_id = 31;

UPDATE attractions SET latitude = '57.69536' WHERE a_id = 32;UPDATE attractions SET longitude = '11.99416' WHERE a_id = 32;

UPDATE attractions SET latitude = '57.69529' WHERE a_id = 33;UPDATE attractions SET longitude = '11.99357' WHERE a_id = 33;

UPDATE attractions SET latitude = '57.69546' WHERE a_id = 36;UPDATE attractions SET longitude = '11.99337' WHERE a_id = 36;

UPDATE attractions SET latitude = '57.69436' WHERE a_id = 39;UPDATE attractions SET longitude = '11.99454' WHERE a_id = 39;

UPDATE attractions SET latitude = '57.69291' WHERE a_id = 42;UPDATE attractions SET longitude = '11.99280' WHERE a_id = 42;

UPDATE attractions SET latitude = '57.69415' WHERE a_id = 45;UPDATE attractions SET longitude = '11.99438' WHERE a_id = 45;

UPDATE attractions SET latitude = '57.69474' WHERE a_id = 47;UPDATE attractions SET longitude = '11.99608' WHERE a_id = 47;

UPDATE attractions SET latitude = '57.69533' WHERE a_id = 55;UPDATE attractions SET longitude = '11.99387' WHERE a_id = 55;

UPDATE attractions SET latitude = '57.69465' WHERE a_id = 56;UPDATE attractions SET longitude = '11.99222' WHERE a_id = 56;

UPDATE attractions SET latitude = '57.69458' WHERE a_id = 57;UPDATE attractions SET longitude = '11.99302' WHERE a_id = 57;

UPDATE attractions SET latitude = '57.69253' WHERE a_id = 61;UPDATE attractions SET longitude = '11.99297' WHERE a_id = 61;

UPDATE attractions SET latitude = '57.69534' WHERE a_id = 64;UPDATE attractions SET longitude = '11.99078' WHERE a_id = 64;

UPDATE attractions SET latitude = '57.69596' WHERE a_id = 69;UPDATE attractions SET longitude = '11.98996' WHERE a_id = 69;

UPDATE attractions SET latitude = '57.69554' WHERE a_id = 71;UPDATE attractions SET longitude = '11.99423' WHERE a_id = 71;

UPDATE attractions SET latitude = '57.69508' WHERE a_id = 72;UPDATE attractions SET longitude = '11.99459' WHERE a_id = 72;

UPDATE attractions SET latitude = '57.69589' WHERE a_id = 73;UPDATE attractions SET longitude = '11.99356' WHERE a_id = 73;

UPDATE attractions SET latitude = '57.69549' WHERE a_id = 74;UPDATE attractions SET longitude = '11.99366' WHERE a_id = 74;

UPDATE attractions SET latitude = '57.69509' WHERE a_id = 75;UPDATE attractions SET longitude = '11.99362' WHERE a_id = 75;

UPDATE attractions SET latitude = '57.69574' WHERE a_id = 76;UPDATE attractions SET longitude = '11.99375' WHERE a_id = 76;

UPDATE attractions SET latitude = '57.69567' WHERE a_id = 77;UPDATE attractions SET longitude = '11.99390' WHERE a_id = 77;

UPDATE attractions SET latitude = '57.69564' WHERE a_id = 78;UPDATE attractions SET longitude = '11.99360' WHERE a_id = 78;

UPDATE attractions SET latitude = '57.69567' WHERE a_id = 79;UPDATE attractions SET longitude = '11.99443' WHERE a_id = 79;

UPDATE attractions SET latitude = '57.69546' WHERE a_id = 80;UPDATE attractions SET longitude = '11.99045' WHERE a_id = 80;

UPDATE attractions SET latitude = '57.69288' WHERE a_id = 83;UPDATE attractions SET longitude = '11.99420' WHERE a_id = 83;

UPDATE attractions SET latitude = '57.69365' WHERE a_id = 87;UPDATE attractions SET longitude = '11.99261' WHERE a_id = 87;

UPDATE attractions SET latitude = '57.69387' WHERE a_id = 88;UPDATE attractions SET longitude = '11.99192' WHERE a_id = 88;

UPDATE attractions SET latitude = '57.69396' WHERE a_id = 89;UPDATE attractions SET longitude = '11.99186' WHERE a_id = 89;

UPDATE attractions SET latitude = '57.69382' WHERE a_id = 92;UPDATE attractions SET longitude = '11.99503' WHERE a_id = 92;

UPDATE attractions SET latitude = '57.69335' WHERE a_id = 96;UPDATE attractions SET longitude = '11.99520' WHERE a_id = 96;

UPDATE attractions SET latitude = '57.69591' WHERE a_id = 103;UPDATE attractions SET longitude = '11.99429' WHERE a_id = 103;

UPDATE attractions SET latitude = '57.69347' WHERE a_id = 104;UPDATE attractions SET longitude = '11.99203' WHERE a_id = 104;

UPDATE attractions SET latitude = '57.69355' WHERE a_id = 105;UPDATE attractions SET longitude = '11.99166' WHERE a_id = 105;

UPDATE attractions SET latitude = '57.69397' WHERE a_id = 107;UPDATE attractions SET longitude = '11.99152' WHERE a_id = 107;





INSERT INTO attractions(a_id, name, build_year, manufacturer, height, rail_length, max_speed, child_attraction)
VALUES (76, 'Stampbanan', 2013, 'Preston & Barbieri', 3, 54, 20, 1);


INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (3, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (16, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (18, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (28, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (31, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (32, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (33, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (36, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (39, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (42, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (45, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (47, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (55, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (56, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (57, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (61, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (64, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (69, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (71, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (72, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (73, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (74, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (75, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (76, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (77, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (78, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (79, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (80, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (83, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (87, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (88, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (89, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (92, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (96, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (103, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (104, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (105, 0, 0, '2023-08-24 07:41:00');
INSERT INTO attraction_metrics(a_id, queue_time, closing_time, time) VALUES (107, 0, 0, '2023-08-24 07:41:00');