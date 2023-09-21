

USE `Cinema`;

# Change la salle pour les projections initialement prévues en salle 1.
UPDATE `ProjectionEvents` SET id_room = 7 WHERE id_room = 1;