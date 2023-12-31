# DROP USER IF EXISTS 'CINEMA_SUPER_ADMIN';
# DROP USER IF EXISTS 'CINEMA_ADMIN';
# DROP USER IF EXISTS 'CINEMA_USER';

CREATE USER IF NOT EXISTS 'CINEMA_SUPER_ADMIN' IDENTIFIED BY 'SuperAdminCinemaPass';
CREATE USER IF NOT EXISTS 'CINEMA_ADMIN' IDENTIFIED BY 'AdminCinemaPass';
CREATE USER IF NOT EXISTS 'CINEMA_USER' IDENTIFIED BY 'UserCinemaPass';

GRANT ALL ON `Cinema`.* TO 'CINEMA_SUPER_ADMIN';
GRANT ALL ON `Cinema`.ProjectionEvents TO 'CINEMA_ADMIN';
GRANT ALL ON `Cinema`.Tickets TO 'CINEMA_ADMIN';
GRANT SELECT, INSERT, UPDATE, DELETE ON `Cinema`.Tickets TO 'CINEMA_USER';
GRANT SELECT ON `Cinema`.ProjectionEvents TO 'CINEMA_USER';

