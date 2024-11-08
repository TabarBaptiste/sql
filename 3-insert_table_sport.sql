INSERT INTO users (name, surname, email, password, solde) VALUES
('Alice', 'Dupont', 'alice@example.com', 'password1', 150.00),
('Bob', 'Martin', 'bob@example.com', 'password2', 300.00),
('Charlie', 'Durand', 'charlie@example.com', 'password3', 450.00),
('Diane', 'Petit', 'diane@example.com', 'password4', 600.00),
('Eric', 'Lemoine', 'eric@example.com', 'password5', 750.00);

INSERT INTO bets (user_id, match_id, montant, cote, player_id, bet_status) VALUES
(6, 16, 50, 2.0, 173, 'en attente'),
(7, 16, 20, 3.5, 174, 'en attente'),
(8, 17, 30, 2.2, 175, 'en attente'),
(9, 17, 15, 4.0, 176, 'en attente'),
(10, 18, 25, 2.5, 177, 'en attente'),
(6, 18, 40, 1.8, 178, 'en attente'),
(7, 18, 35, 2.1, 179, 'en attente'),
(8, 18, 10, 3.8, 180, 'en attente'),
(9, 20, 20, 2.6, 181, 'en attente'),
(10, 20, 50, 2.0, 182, 'en attente');

INSERT INTO teams (name, logo, country, league) VALUES
('Paris Saint-Germain', 'psg_logo.png', 'France', 'Ligue 1'),
('Real Madrid', 'realmadrid_logo.png', 'Espagne', 'La Liga'),
('FC Barcelone', 'barcelona_logo.png', 'Espagne', 'La Liga'),
('Manchester United', 'manu_logo.png', 'Angleterre', 'Premier League'),
('Liverpool FC', 'liverpool_logo.png', 'Angleterre', 'Premier League'),
('Bayern Munich', 'bayern_logo.png', 'Allemagne', 'Bundesliga'),
('Juventus', 'juventus_logo.png', 'Italie', 'Serie A'),
('Chelsea FC', 'chelsea_logo.png', 'Angleterre', 'Premier League'),
('AC Milan', 'milan_logo.png', 'Italie', 'Serie A'),
('Manchester City', 'mancity_logo.png', 'Angleterre', 'Premier League');

INSERT INTO players (name, surname, teams_id, nationality, poste, nb_buts) VALUES
('Léo', 'Messi', 11, 'Argentine', 'Attaquant', 5),
('Cristiano', 'Ronaldo', 12, 'Portugal', 'Attaquant', 7),
('Antoine', 'Griezmann', 13, 'France', 'Milieu', 3),
('Kylian', 'Mbappé', 14, 'France', 'Attaquant', 6),
('Neymar', 'Junior', 15, 'Brésil', 'Attaquant', 4),
('Karim', 'Benzema', 16, 'France', 'Attaquant', 8),
('Robert', 'Lewandowski', 17, 'Pologne', 'Attaquant', 6),
('Eden', 'Hazard', 18, 'Belgique', 'Milieu', 3),
('Sadio', 'Mané', 19, 'Sénégal', 'Attaquant', 5),
('Mohamed', 'Salah', 20, 'Égypte', 'Attaquant', 7),
('Paulo', 'Dybala', 11, 'Argentine', 'Milieu', 2),
('Gerard', 'Piqué', 22, 'Espagne', 'Défenseur', 1),
('Virgil', 'Van Dijk', 13, 'Pays-Bas', 'Défenseur', 0),
('Romelu', 'Lukaku', 24, 'Belgique', 'Attaquant', 4),
('Philippe', 'Coutinho', 15, 'Brésil', 'Milieu', 3),
('Luka', 'Modric', 26, 'Croatie', 'Milieu', 1),
('Kevin', 'De Bruyne', 17, 'Belgique', 'Milieu', 2),
('Harry', 'Kane', 28, 'Angleterre', 'Attaquant', 6);

INSERT INTO matches (id_team_1, id_team_2, location, match_date, match_status) VALUES
(11, 12, 'Stade de France', '2024-12-01 18:00:00', 'prévu'),
(13, 14, 'Camp Nou', '2024-12-02 20:00:00', 'prévu'),
(15, 16, 'Allianz Arena', '2024-12-03 18:00:00', 'prévu'),
(17, 18, 'Old Trafford', '2024-12-04 21:00:00', 'prévu'),
(19, 20, 'Anfield', '2024-12-05 18:00:00', 'prévu');

INSERT INTO transactions (user_id, transaction_type, transaction_montant, transaction_date, bets_id) VALUES
(6, 'dépôt', 100, '2024-11-01', 21),
(7, 'retrait', 50, '2024-11-02', 22),
(8, 'dépôt', 200, '2024-11-03', 23),
(9, 'dépôt', 150, '2024-11-04', 24),
(10, 'retrait', 75, '2024-11-05', 25);
