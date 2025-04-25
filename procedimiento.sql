alter procedure proyecto2pok.createpokrequest(
@type NVARCHAR (255)
)
AS

SET NOCOUNT ON;

INSERT INTO proyecto2pok.requests(
 [type],
 [url],
 id_status
)VALUES
(
    @type,
    '',
    (select id from proyecto2pok.status where description = 'sent')

)

select MAX(id) as id from proyecto2pok.requests

exec proyecto2pok.createpokrequest 'fire'