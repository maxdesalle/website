CREATE TABLE subscribers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  email TEXT UNIQUE NOT NULL,
  -- status is one of: pending | active | unsubscribed
  status TEXT NOT NULL DEFAULT 'pending',
  token TEXT NOT NULL,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  confirmed_at TEXT
);

CREATE INDEX idx_subscribers_token ON subscribers(token);
