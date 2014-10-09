/* SQL PROCEDURES */

DROP PROCEDURE SPAddMediaToAdvert

GO
CREATE PROCEDURE SPAddMediaToAdvert
	@advertId AS INT,                    -- Advert ID that the media should be added to
	@fileName AS VARCHAR(200)			 -- Filename of the media
AS
BEGIN
	BEGIN TRANSACTION
		-- Insert media
		INSERT INTO AdvertMedia VALUES (@fileName)
		
		-- Add media to advert
		INSERT AdvertMediaAdvert VALUES (@advertId, @@IDENTITY)
	COMMIT TRANSACTION
END
GO