--* Partie 2

-- Création de la table users
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    solde DECIMAL(10, 2) DEFAULT 0.00,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Création de la table teams
CREATE TABLE teams (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    logo VARCHAR(255),
    country VARCHAR(100) NOT NULL,
    league VARCHAR(100),
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Création de la table players
CREATE TABLE players (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    teams_id INT,
    nationality VARCHAR(100),
    poste ENUM('Attacker', 'Midfielder', 'Defender', 'Goalkeeper') NOT NULL,
    nb_buts INT DEFAULT 0,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (teams_id) REFERENCES teams(id) ON DELETE SET NULL
);

-- Créationd de la table matches
CREATE TABLE matches (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_team_1 INT NOT NULL,
    id_team_2 INT NOT NULL,
    location VARCHAR(255),
    match_date DATETIME NOT NULL,
    status_bet ENUM('open', 'closed', 'settled') DEFAULT 'open',
    status_match ENUM('scheduled', 'in_progress', 'completed', 'cancelled') DEFAULT 'scheduled',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_team_1) REFERENCES teams(id) ON DELETE CASCADE,
    FOREIGN KEY (id_team_2) REFERENCES teams(id) ON DELETE CASCADE
);

-- Création de la table bets
CREATE TABLE bets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    match_id INT NOT NULL,
    montant DECIMAL(10, 2) NOT NULL,
    cote DECIMAL(10, 2) NOT NULL,
    potentiel_win DECIMAL(10, 2) GENERATED ALWAYS AS (montant * cote) STORED,
    player_id INT NOT NULL,
    bet_status ENUM('en attente', 'gagné', 'perdu', 'annulé') NOT NULL DEFAULT 'en attente',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updateAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (match_id) REFERENCES matches(id),
    FOREIGN KEY (player_id) REFERENCES players(id)
);

-- Créationd de la table transactions
CREATE TABLE transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    transaction_type ENUM('deposit', 'withdrawal') NOT NULL,
    transaction_montant DECIMAL(10, 2) NOT NULL,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    bets_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (bets_id) REFERENCES bets(id) ON DELETE SET NULL
);

