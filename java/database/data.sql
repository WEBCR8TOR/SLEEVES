BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO records
(record_id, record_title)
VALUES
('abc123','Test Title');

INSERT INTO artists
(artist_id, artist_name)
VALUES
(0,'The Tests');

INSERT INTO genres
(genre_id, genre_name)
VALUES
(0,'Oldies');

INSERT INTO labels
(label_id, label_name)
VALUES
(0, 'Start Testing Records');

INSERT INTO tracks
(track_id, title, duration, track_number)
VALUES
('tteesstt0','One', 222222, 1),
('tteesstt1','Two', 220000, 2),
('tteesstt2','Three', 210000, 3),
('tteesstt2','Four', 230000, 4),
('tteesstt2','Five', 200000, 5),
('tteesstt2','Six', 290000, 6),
('tteesstt2','Seven', 330000, 7);

INSERT INTO collections
(collection_id, user_id, collection_name,is_public)
VALUES
(101,1001,'The Test Collection', true);

COMMIT TRANSACTION;
