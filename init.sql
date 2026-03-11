CREATE TABLE IF NOT EXISTS logs (
    id        SERIAL PRIMARY KEY,
    timestamp TIMESTAMPTZ DEFAULT NOW(),
    level     VARCHAR(10) NOT NULL,
    message   TEXT NOT NULL,
    service   VARCHAR(100) DEFAULT 'unknown',
    data      JSONB DEFAULT '{}'
);

CREATE INDEX IF NOT EXISTS idx_logs_timestamp ON logs(timestamp DESC);
CREATE INDEX IF NOT EXISTS idx_logs_level ON logs(level);

INSERT INTO logs (level, message, service) VALUES
    ('INFO',  'Infrastructure LogMeIn démarrée',  'system'),
    ('INFO',  'PFS1 CARP MASTER actif',            'network'),
    ('INFO',  'LACP Port-Channel1 bundled SU',     'network'),
    ('INFO',  'Docker Swarm initialisé',            'docker'),
    ('INFO',  'Worker01 rejoint le cluster',        'docker'),
    ('INFO',  'Worker02 rejoint le cluster',        'docker'),
    ('ERROR', 'Erreur test connexion VLAN40',       'network'),
    ('INFO',  'VPN Entreprise 2 établi',            'network'),
    ('INFO',  'Zabbix monitoring actif',            'monitoring'),
    ('INFO',  'Stack logmein déployée',             'docker');