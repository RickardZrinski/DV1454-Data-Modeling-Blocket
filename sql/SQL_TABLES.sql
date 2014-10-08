/* SQL TABLES */

DROP TABLE AdvertMediaAdvert
DROP TABLE Advert
DROP TABLE "User"
DROP TABLE UserType
DROP TABLE AdvertType
DROP TABLE AdvertCategory
DROP TABLE Location
DROP TABLE AdvertMedia

CREATE TABLE AdvertMedia
(
	mediaId          INT NOT NULL IDENTITY(1,1),
	fileName         VARCHAR(200) NOT NULL,
	
	PRIMARY KEY (mediaId)
)

CREATE TABLE AdvertCategory
(
	categoryId      INT NOT NULL IDENTITY(1,1),
	name            VARCHAR(30) NOT NULL,
	parent          INT NOT NULL, -- Parent category of the category, if this is NULL it means that it's the root category
	
	PRIMARY KEY (categoryId),
	
	CONSTRAINT fk_parentCategory FOREIGN KEY (parent)
	REFERENCES AdvertCategory (categoryId)
)

CREATE TABLE Location
(
	locationId      INT NOT NULL IDENTITY(1,1),
	name            VARCHAR(50) NOT NULL,
	postalNr        SMALLINT NOT NULL,
	parent          INT, -- Parent location of the location, if this is NULL it means that it's the root location
	
	PRIMARY KEY (locationId),
	
	CONSTRAINT fk_parentLocation FOREIGN KEY (parent)
	REFERENCES Location (locationId)
)

CREATE TABLE AdvertType
(
	typeId          INT NOT NULL IDENTITY(1,1),
	typeName        VARCHAR(20),
	
	PRIMARY KEY (typeId)
)

CREATE TABLE Advert
(
	advertId        INT NOT NULL IDENTITY(1,1),
	title           VARCHAR(50) NOT NULL,
	creationdate    INT NOT NULL, -- Unix time
	expiryDate      INT NOT NULL, -- Unix time
	phoneNr         VARCHAR(20) NOT NULL,
	mail            VARCHAR(254) NOT NULL, -- 254 is the max length of an email address
	paid            BIT NOT NULL,
	typeId          INT NOT NULL,
	categoryId      INT NOT NULL,
	locationId      INT NOT NULL,
	
	PRIMARY KEY (advertId),
	
	CONSTRAINT fk_type FOREIGN KEY (categoryId)
	REFERENCES AdvertType (typeId),
	
	CONSTRAINT fk_category FOREIGN KEY (categoryId)
	REFERENCES AdvertCategory (categoryId),
	
	CONSTRAINT fk_location FOREIGN KEY (locationId)
	REFERENCES Location (locationId)
)

CREATE TABLE AdvertMediaAdvert
(
	advertId        INT NOT NULL,
	mediaId         INT NOT NULL,
	
	CONSTRAINT fk_advert FOREIGN KEY (advertId)
	REFERENCES Advert (advertId),
	
	CONSTRAINT fk_media FOREIGN KEY (mediaId)
	REFERENCES AdvertMedia (mediaId)
)

CREATE TABLE UserType
(
	typeId          INT NOT NULL IDENTITY(1,1),
	name            VARCHAR(20) NOT NULL,
	
	PRIMARY KEY (typeId)
)

CREATE TABLE "User"
(
	userId          INT NOT NULL IDENTITY(1,1),
	name            VARCHAR(30) NOT NULL,
	organizationNr  BIGINT NOT NULL, -- Organizations can have 12 numbers max in their organization number. Usually only 10.
	telephone       VARCHAR(20) NOT NULL,
	mail            VARCHAR(254) NOT NULL, -- 254 is the max length of an email address
	typeId          INT NOT NULL,
	
	PRIMARY KEY (userId),
	
	CONSTRAINT fk_userType FOREIGN KEY (typeId)
	REFERENCES UserType (typeId)	
)