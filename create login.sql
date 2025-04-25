create login PokeQueueApp with PASSWORD = 'Password123@';

create user PokeUser for login PokeQueueApp;

grant select on SCHEMA :: proyecto2pok to PokeUser;
grant insert on SCHEMA ::  proyecto2pok to PokeUser;
grant update on SCHEMA ::  proyecto2pok to PokeUser;
grant delete on SCHEMA ::  proyecto2pok to PokeUser;
grant execute on SCHEMA ::  proyecto2pok to PokeUser;