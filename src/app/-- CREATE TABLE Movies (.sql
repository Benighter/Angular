-- CREATE TABLE Movies (
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     release_date DATE,
--     genre_id INTEGER REFERENCES Genres(id),
--     description TEXT,
--     runtime INTEGER,
--     rating FLOAT,
--     poster_url TEXT
-- );

-- CREATE TABLE Actors (
--     id SERIAL PRIMARY KEY,
--     name TEXT NOT NULL,
--     date_of_birth DATE,
--     biography TEXT
-- );

CREATE TABLE Movie_Actors (
    id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES Movies(id),
    actor_id INTEGER REFERENCES Actors(id),
    role TEXT
);

-- CREATE TABLE Reviews (
--     id SERIAL PRIMARY KEY,
--     movie_id INTEGER REFERENCES Movies(id),
--     user_id INTEGER REFERENCES Users(id),
--     review_text TEXT,
--     rating FLOAT CHECK (rating BETWEEN 0 AND 10),
--     review_date DATE DEFAULT CURRENT_DATE
-- );

-- CREATE TABLE Users (
--     id SERIAL PRIMARY KEY,
--     username TEXT NOT NULL UNIQUE,
--     email TEXT NOT NULL UNIQUE,
--     password TEXT NOT NULL
-- );

-- CREATE TABLE Genres (
--     id SERIAL PRIMARY KEY,
--     name TEXT NOT NULL UNIQUE
-- );