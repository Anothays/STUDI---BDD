USE `Cinema`;

DELETE FROM `MovieTheaters`;

INSERT INTO `MovieTheaters` (name, city, address) VALUES 
('PLS', 'Plaisir', '100 rue de la paix'),
('SQY', 'Montigny', '7 place de la médiathèque'),
('TRP', 'Trappes', '39 route des fleurs'),
('PAR', 'Paris', '104 impasse des arroseurs arrosés')
;

INSERT INTO `Rooms` (`name`, `seatings`, `id_movieTheater`) VALUES
('A',300, 1),
('B',300, 1),
('C',250, 1),
('D',250, 1),
('E',250, 1),
('F',250, 1),
('G',250, 1),
('A',300, 2),
('B',300, 2),
('C',250, 2),
('D',250, 2),
('E',250, 2),
('F',250, 2),
('G',250, 2),
('A',300, 3),
('B',300, 3),
('C',250, 3),
('D',250, 3),
('E',250, 3),
('F',250, 3),
('G',250, 3),
('A',300, 4),
('B',300, 4),
('C',250, 4),
('D',250, 4),
('E',250, 4),
('F',250, 4),
('G',250, 4)
;

INSERT INTO `Movies` (`title`, `duration`, `director`, `description`) VALUES
('One piece','02:30:15','Oda',"L'équipage au chapeau de paille fait une halte dans une ville portuaire de l'île d'Asuka. Peu après leur arrivée, Zoro disparaît. Pendant que l'équipage part à sa recherche, Sanji suit Maya, une fille originaire de l'île, vers un village. Ici, Zoro y est aperçu accompagné de soldats de la Marine. Zoro est désormais enrôlé dans la Marine et volera à la prêtresse du village des perles magiques. Derrière toute cette magouille se trouverait Saga, un ancien ami de Zoro, qui tenterait de faire revivre la terrible épée aux sept étoiles. Luffy décide donc d'aider Maya, la prêtresse du village, à contrecarrer les plans de Saga pour avoir une explication avec Zoro."),
('Independance Day', '01:45:30','Roland Emmerich',"Il raconte l'invasion d'extraterrestres venus piller les ressources de la Terre, devant lesquels des groupes d'individus et de familles fuient et convergent vers le désert du Nevada. Avec le reste de la population américaine, ils espèrent participer à une bataille de la dernière chance pour la survie de l'espèce humaine. Symboliquement cette bataille a lieu le 4 juillet, le jour de la fête nationale américaine. "),
('Barbie', '02:15:10', 'Greta Gerwig',"A Barbie Land, vous êtes un être parfait dans un monde parfait. Sauf si vous êtes en crise existentielle, ou si vous êtes Ken."),
('Oppenheimer','03:15:20','Christopher Nolan',"Le nouveau film de Christopher Nolan sur l’univers palpitant de l‘homme complexe qui a mis en jeu la vie du monde entier pour mieux le sauver."),
('Anatomie d\'une chute','02:31:00', 'Justine Triet',"Sandra, Samuel et leur fils malvoyant de 11 ans, Daniel, vivent depuis un an loin de tout, à la montagne. Un jour, Samuel est retrouvé mort au pied de leur maison. Une enquête pour mort suspecte est ouverte. Sandra est bientôt inculpée malgré le doute : suicide ou homicide ? Un an plus tard, Daniel assiste au procès de sa mère, véritable dissection du couple."),
('Green Book : Sur les routes du sud','02:00:00','Peter Farrelly', "En 1962, alors que règne la ségrégation, Tony Lip, un videur italo-américain du Bronx, est engagé pour conduire et protéger le Dr Don Shirley, un pianiste noir de renommée mondiale, lors d’une tournée de concerts."),
('Les as de la jungle 2','01:29:00','Laurent Bru', "Qui appelle-t-on à la rescousse quand un mystérieux super-vilain recouvre la jungle d’une mousse rose qui explose au contact de l’eau ? Les As de la Jungle ! Moins d’un mois avant la saison des pluies, la course contre la montre est lancée. Du Pôle Nord à l’Extrême-Orient, traversant des montagnes, des déserts et des océans, nos héros vont devoir parcourir le monde à la recherche d’un antidote, loin de leur jungle favorite !")
;

INSERT INTO `Tariffs` (`title`, `price`) VALUES
('Plein', '9.20'),
('Étudiant', '7.60'),
('Moins de 14 ans', '5.90')
;

INSERT INTO `Roles` (`name`) VALUES
('ROLE_USER'),
('ROLE_SUPER_ADMIN'),
('ROLE_ADMIN'),
('ROLE_CLIENT')
;

INSERT INTO `Users` (`name`, `lastname`, `email`, `password`, `phoneNumber`) VALUES
('John', 'Doe', 'JohnDoe@JD.fr','$2y$13$yttGHVF.y1IKVYgeqxp3We2AQZtTMCeCrPzEjPQ/8KxrAPv5hICGy', '0123456789'),
('Émile', 'Guerin', 'EmileGuerin@EG.com', '$2y$13$yttGHVF.y1IKVYgeqxp3We2AQZtTMCeCrPzEjPQ/8KxrAPv5hICGy', '0123456789'),
('Suzanne', 'Henry', 'Suzanne@Henry.com', '$2y$13$yttGHVF.y1IKVYgeqxp3We2AQZtTMCeCrPzEjPQ/8KxrAPv5hICGy', '0123456789'),
('Célina', 'Leger', 'Celina@leger.com', '$2y$13$yttGHVF.y1IKVYgeqxp3We2AQZtTMCeCrPzEjPQ/8KxrAPv5hICGy', '0123456789')
;

INSERT INTO `Roles_Users` (`id_user`, `id_role`) VALUES
(1,1),
(1,2),
(2,1),
(2,3),
(3,1),
(3,4),
(4,1),
(4,4)
;

INSERT INTO `ProjectionEvents` (`id_room`, `id_movie`, `date`, `options`, `language`) VALUES
(1, 1, '2023-09-16 10:30:00', '{"1": "IMAX"}', 'VO'),
(1, 1, '2023-09-16 14:00:00', '{"1": "IMAX"}', 'VF'),
(1, 1, '2023-09-16 18:00:00', '{"1": "IMAX"}', 'VO'),
(1, 1, '2023-09-16 20:30:00', '{"1": "IMAX"}', 'VO'),
(2, 2, '2023-09-16 10:30:00', '{"1": "IMAX", "2": "4DX"}', 'VO'),
(2, 2, '2023-09-16 14:00:00', '{"1": "IMAX", "2": "4DX"}', 'VF'),
(2, 2, '2023-09-16 18:00:00', '{"1": "IMAX"}', 'VF'),
(2, 2, '2023-09-16 20:30:00', '{"1": "IMAX", "2": "3D"}', 'V0'),
(3, 4, '2023-09-16 10:30:00', '{"1": "IMAX"}', 'VO'),
(3, 4, '2023-09-16 14:00:00', '{"1": "IMAX", "2": "4DX"}', 'VF'),
(3, 4, '2023-09-16 18:00:00', '{"1": "3D"}', 'VO'),
(3, 4, '2023-09-16 20:30:00', NULL, 'VO')
;

INSERT INTO `Tickets` (`paid`, `id_projectionEvent`, `id_tariff`, `id_user`) VALUES
(1, 1, 1, 1),
(1, 1, 1, 1),
(1, 1, 3, 1),
(1, 1, 3, 1),

(1, 1, 1, 2),
(1, 1, 1, 2),
(1, 1, 1, 2),
(1, 1, 1, 2),

(1, 1, 1, 3),
(1, 1, 1, 3),
(1, 1, 3, 3),
(1, 1, 2, 3),

(1, 2, 1, 4),
(1, 2, 1, 4),
(1, 2, 2, 4),
(1, 2, 2, 4)
;


