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
                            ('Olofstr�m', 1),
                            ('Karlshamn', 1),
                            ('Ronneby', 1),
                            ('S�lvesborg', 1);
                            
INSERT INTO Location VALUES ('Kalmar', NULL),
                            ('Borgholm', 2),
                            ('Emmaboda', 2),
                            ('Hultsfred', 2),
                            ('H�gsby', 2),
                            ('Kalmar', 2),
                            ('M�nster�s', 2),
                            ('M�rbyl�nga', 2),
                            ('Nybro', 2),
                            ('Oskarshamn', 2),
                            ('Tors�s', 2),
                            ('Vimmerby', 2),
                            ('V�stervik', 2);

/* AdvertCategory */
DELETE FROM AdvertCategory
INSERT INTO AdvertCategory VALUES ('Fordon', NULL),
                                  ('Bilar', 1),
                                  ('Bildelar & Biltillbeh�r', 1),
                                  ('B�tar', 1),
                                  ('B�tdelar & tillbeh�r', 1),
                                  ('Husvagnar & Husbilar', 1),
                                  ('Mopeder & A-traktor', 1),
                                  ('Motorcyklar', 1),
                                  ('MC-delar & tillbeh�r', 1),
                                  ('Lastbil, Truck & Entreprenad', 1),
                                  ('Skogs- & Lantbruks�maskiner', 1),
                                  ('Sn�skotrar', 1),
                                  ('Sn�skoterdelar & tillbeh�r', 1);
                                  
INSERT INTO AdvertCategory VALUES ('Elektronik', NULL),
                                  ('Datorer & TV-spel', 14),
                                  ('Ljud & Bild', 14),
                                  ('Telefoner & Tillbeh�r', 14);
                                  
INSERT INTO AdvertCategory VALUES ('Station�ra datorer', 15),
                                  ('B�rbara datorer', 15),
                                  ('Surfplattor', 15),
                                  ('Datortillbeh�r & Program', 15),
                                  ('PC-spel & Onlinespel', 15),
                                  ('TV-spel', 15),
                                  ('�vrigt', 15);

/* AdvertType */
DELETE FROM AdvertType
INSERT INTO AdvertType VALUES ('S�ljes'),
                              ('K�pes'),
                              ('�nskar hyra'),
                              ('Uthyres'),
                              ('Bytes');

/* UserType */
DELETE FROM UserType
INSERT INTO UserType VALUES ('Privat'),
                            ('F�retag');

/* User */
DELETE FROM "User"
INSERT INTO "User" VALUES ('Rickard', NULL, '073-0616860', 'exempel@mail.se', 1),
                          ('Martin', NULL, '070-2318232', 'exempel2@mail.se', 1),
                          ('Pol', NULL, '071-4343443', 'exempel3@mail.se', 1),
                          ('BTH', 2021004011, '0455385000', 'exempel4@bth.se', 2);

/* Advert */
DELETE FROM Advert
DECLARE @unixTimestamp AS INT = (SELECT DATEDIFF(s, '1970-01-01 00:00:00', GETUTCDATE()))

INSERT INTO Advert VALUES ('Skrotig v�lf�rdsvolvo till salu',
                          (@unixTimestamp),
                          (@unixTimestamp + 2592000),
                          '073-0616830',
                          'exempel@bth.se',
                          0,
                          1,
                          2,
                          2)
                          
INSERT INTO Advert VALUES ('"�sa Romson"-b�t till salu (komplett med illegal kopparbaserad f�rgbotten)',
                          (@unixTimestamp),
                          (@unixTimestamp + 2592000),
                          '073-0616811',
                          'exempel@riksdagen.se',
                          0,
                          1,
                          3,
                          2)
                          
INSERT INTO Advert VALUES ('Vi �ndrar oss. V�lf�rden �r till salu. H�gsta budgivare vinner.',
                          (@unixTimestamp),
                          (@unixTimestamp + 2592000),
                          '073-0616821',
                          'jonas@riksdagen.se',
                          0,
                          1,
                          5,
                          4)
                          
INSERT INTO Advert VALUES ('Alliansen: Energif�retag k�pes. G�rna Nuon Energy. G�rna f�r 89 miljarder.',
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