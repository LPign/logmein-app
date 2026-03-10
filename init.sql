CREATE TABLE IF NOT EXISTS logs (
    id         SERIAL PRIMARY KEY,
    message    TEXT NOT NULL,
    level      VARCHAR(10) DEFAULT 'INFO',
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO logs (message, level) VALUES
    ('Infrastructure LogMeIn démarrée', 'INFO'),
    ('PFS1 CARP MASTER actif', 'INFO'),
    ('LACP Port-Channel1 bundled SU', 'INFO'),
    ('Docker Swarm initialisé', 'INFO'),
    ('Worker01 rejoint le cluster', 'INFO'),
    ('Worker02 rejoint le cluster', 'INFO'),
    ('Erreur test connexion VLAN40', 'ERROR'),
    ('VPN Entreprise 2 établi', 'INFO'),
    ('Zabbix monitoring actif', 'INFO'),
    ('Stack logmein déployée', 'INFO');
