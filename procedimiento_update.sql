CREATE PROCEDURE proyecto2pok.update_poke_request(
    @id int
    , @status  NVARCHAR(255)
    , @url NVARCHAR(1000)
)
AS

SET NOCOUNT ON;

UPDATE proyecto2pok.requests
set id_status = ( select id from proyecto2pok.status where description = @status )
    , url = @url
    , updated = GETDATE()
WHERE id = @id;

select 1 as completed;