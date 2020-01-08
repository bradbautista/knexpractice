BEGIN;

INSERT INTO blogful_articles (title, date_published, content) VALUES
    ('One of Twenty',   now() - '28 days'::INTERVAL,    'Article 1 of 20'),
    ('Two of Twenty',   now() - '27 days'::INTERVAL,    'Article 2 of 20'),
    ('Three of Twenty',   now() - '26 days'::INTERVAL,    'Article 3 of 20'),
    ('Four of Twenty',   now() - '25 days'::INTERVAL,    'Article 4 of 20'),
    ('Five of Twenty',   now() - '24 days'::INTERVAL,    'Article 5 of 20'),
    ('Six of Twenty',   now() - '23 days'::INTERVAL,    'Article 6 of 20'),
    ('Seven of Twenty',   now() - '22 days'::INTERVAL,    'Article 7 of 20'),
    ('Eight of Twenty',   now() - '21 days'::INTERVAL,    'Article 8 of 20'),
    ('Nine of Twenty',   now() - '20 days'::INTERVAL,    'Article 0 of 20'),
    ('Ten of Twenty',   now() - '19 days'::INTERVAL,    'Article 10 of 20'),
    ('Eleven of Twenty',   now() - '18 days'::INTERVAL,    'Article 11 of 20'),
    ('Twelve of Twenty',   now() - '17 days'::INTERVAL,    'Article 12 of 20'),
    ('Thirteen of Twenty',   now() - '16 days'::INTERVAL,    'Article 13 of 20'),
    ('Fourteen of Twenty',   now() - '15 days'::INTERVAL,    'Article 14 of 20'),
    ('Fifteen of Twenty',   now() - '14 days'::INTERVAL,    'Article 15 of 20'),
    ('Sixteen of Twenty',   now() - '13 days'::INTERVAL,    'Article 16 of 20'),
    ('Seventeen of Twenty',   now() - '12 days'::INTERVAL,    'Article 17 of 20'),
    ('Eighteen of Twenty',   now() - '11 days'::INTERVAL,    'Article 18 of 20'),
    ('Nineteen of Twenty',   now() - '10 days'::INTERVAL,    'Article 19 of 20'),
    ('Twenty of Twenty',   now() - '9 days'::INTERVAL,    'Article 20 of 20');

COMMIT;