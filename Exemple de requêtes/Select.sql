USE `Cinema`;

# Selectionne toutes les séances en IMAX 3D
SELECT * FROM `ProjectionEvents` WHERE JSON_SEARCH(`options`, 'all', 'IMAX') AND json_search(options, "all", "3D");

# Sélectionne toutes les salles de projection avec leur établissement correspondant
SELECT Rooms.name AS `nom de la salle`, Rooms.id, MovieTheaters.name FROM Rooms JOIN MovieTheaters ON MovieTheaters.id = Rooms.id_movieTheater; 

# Selectionne tous les billets avec le tarif correspondant
SELECT Tickets.id AS `billet ID`, Tariffs.title as Tarif FROM Tickets join Tariffs ON Tickets.id_tariff = Tariffs.id ORDER BY Tariffs.title;

# Selectionne le nombre de billets par tarif et le total correspondant
SELECT 
Tariffs.title AS Tarif, 
COUNT(Tickets.id) AS `Nombre de billets`, 
SUM(Tariffs.price) AS TOTAL 
FROM Tariffs 
JOIN Tickets ON Tickets.id_tariff = Tariffs.id 
GROUP BY Tarif;

# Selectionne les billets dont la séance est passée
SELECT Tickets.id, Movies.title, ProjectionEvents.date  FROM Tickets JOIN ProjectionEvents on ProjectionEvents.id = Tickets.id_projectionEvent JOIN Movies on Movies.id = ProjectionEvents.id_movie WHERE ProjectionEvents.date < NOW();

# Selectionne les places restantes pour une séance donnée
SELECT Movies.title AS film, ProjectionEvents.date AS date, ProjectionEvents.language AS Langue, ProjectionEvents.options AS options, Rooms.seatings - COUNT(Tickets.id) AS `PLACES RESTANTES` FROM Movies JOIN ProjectionEvents ON ProjectionEvents.id_movie = Movies.id JOIN Rooms ON Rooms.id = ProjectionEvents.id_room LEFT JOIN Tickets ON Tickets.id_projectionEvent = ProjectionEvents.id WHERE ProjectionEvents.id = 1;