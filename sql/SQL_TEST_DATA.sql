/* SQL TEST DATA */

/* AdvertMedia */
DELETE FROM AdvertMedia
INSERT INTO AdvertMedia VALUES ('1'),
                               ('2'),
                               ('3'),
                               ('4'),
                               ('5'),
                               ('6'),
                               ('7'),
                               ('8'),
                               ('9'),
                               ('10'),
                               ('11');

/* Location */
DELETE FROM Location
INSERT INTO Location VALUES ('Blekinge', NULL),
                            ('Karlskrona', 1),
                            ('Olofström', 1),
                            ('Karlshamn', 1),
                            ('Ronneby', 1),
                            ('Sölvesborg', 1);
                            
INSERT INTO Location VALUES ('Kalmar', NULL),
                            ('Borgholm', 2),
                            ('Emmaboda', 2),
                            ('Hultsfred', 2),
                            ('Högsby', 2),
                            ('Kalmar', 2),
                            ('Mönsterås', 2),
                            ('Mörbylånga', 2),
                            ('Nybro', 2),
                            ('Oskarshamn', 2),
                            ('Torsås', 2),
                            ('Vimmerby', 2),
                            ('Västervik', 2);

/* AdvertCategory */
DELETE FROM AdvertCategory
INSERT INTO AdvertCategory VALUES ('Fordon', NULL),
                                  ('Bilar', 1),
                                  ('Bildelar & Biltillbehör', 1),
                                  ('Båtar', 1),
                                  ('Båtdelar & tillbehör', 1),
                                  ('Husvagnar & Husbilar', 1),
                                  ('Mopeder & A-traktor', 1),
                                  ('Motorcyklar', 1),
                                  ('MC-delar & tillbehör', 1),
                                  ('Lastbil, Truck & Entreprenad', 1),
                                  ('Skogs- & Lantbruks­maskiner', 1),
                                  ('Snöskotrar', 1),
                                  ('Snöskoterdelar & tillbehör', 1);
                                  
INSERT INTO AdvertCategory VALUES ('Elektronik', NULL),
                                  ('Datorer & TV-spel', 14),
                                  ('Ljud & Bild', 14),
                                  ('Telefoner & Tillbehör', 14);
                                  
INSERT INTO AdvertCategory VALUES ('Stationära datorer', 15),
                                  ('Bärbara datorer', 15),
                                  ('Surfplattor', 15),
                                  ('Datortillbehör & Program', 15),
                                  ('PC-spel & Onlinespel', 15),
                                  ('TV-spel', 15),
                                  ('Övrigt', 15);

/* AdvertType */
DELETE FROM AdvertType
INSERT INTO AdvertType VALUES ('Säljes'),
                              ('Köpes'),
                              ('Önskar hyra'),
                              ('Uthyres'),
                              ('Bytes');

/* UserType */
DELETE FROM UserType
INSERT INTO UserType VALUES ('Privat'),
                            ('Företag');

/* User */
DELETE FROM "User"
INSERT INTO "User" VALUES ('Rickard', NULL, '073-0616860', 'exempel@mail.se', 1),
                          ('Martin', NULL, '070-2318232', 'exempel2@mail.se', 1),
                          ('Pol', NULL, '071-4343443', 'exempel3@mail.se', 1),
                          ('BTH', 2021004011, '0455385000', 'exempel4@bth.se', 2);

/* Advert */
DELETE FROM Advert
DECLARE @unixTimestamp AS INT = (SELECT DATEDIFF(s, '1970-01-01 00:00:00', GETUTCDATE()))

INSERT INTO Advert VALUES ('Skrotig välfärdsvolvo till salu',
                          (@unixTimestamp),
                          (@unixTimestamp + 2592000),
                          '073-0616830',
                          'exempel@bth.se',
                          0,
                          1,
                          2,
                          2)
                          
INSERT INTO Advert VALUES ('"Åsa Romson"-båt till salu (komplett med illegal kopparbaserad färgbotten)',
                          (@unixTimestamp),
                          (@unixTimestamp + 2592000),
                          '073-0616811',
                          'exempel@riksdagen.se',
                          0,
                          1,
                          3,
                          2)
                          
INSERT INTO Advert VALUES ('Vi ändrar oss. Välfärden är till salu. Högsta budgivare vinner.',
                          (@unixTimestamp),
                          (@unixTimestamp + 2592000),
                          '073-0616821',
                          'jonas@riksdagen.se',
                          0,
                          1,
                          5,
                          4)
                          
INSERT INTO Advert VALUES ('Alliansen: Energiföretag köpes. Gärna Nuon Energy. Gärna för 89 miljarder.',
                          (@unixTimestamp),
                          (@unixTimestamp + 2592000),
                          '073-061055022',
                          'alliansen@riksdagen.se',
                          0,
                          1,
                          5,
                          4)                          

/* AdvertMediaAdvert */
DELETE FROM AdvertMediaAdvert
INSERT INTO AdvertMediaAdvert VALUES (1, 1),
                                     (1, 2),
                                     (1, 3),
                                     (2, 4),
                                     (2, 5)