-- Creating all required tables

DROP TABLE IF EXISTS mushroom_occupancy;
DROP TABLE IF EXISTS mushroom_house;
DROP TABLE IF EXISTS gnome;

CREATE TABLE gnome (
    gnome_id INT GENERATED ALWAYS AS IDENTITY,
    gnome_name TEXT NOT NULL,
    hat_colour TEXT UNIQUE NOT NULL,
    age SMALLINT NOT NULL CHECK (age >= 0 AND age < 300),
    gender CHAR(1) NOT NULL,
    PRIMARY KEY (gnome_id)
);

CREATE TABLE mushroom_house (
    mushroom_house_id INT GENERATED ALWAYS AS IDENTITY,
    house_number INT NOT NULL CHECK (house_number > 0),
    street_name TEXT NOT NULL,
    max_occupants INT NOT NULL CHECK (max_occupants > 0),
    roof_colour TEXT NOT NULL,
    PRIMARY KEY (mushroom_house_id)
);

CREATE TABLE mushroom_occupancy (
    occupancy_id INT GENERATED ALWAYS AS IDENTITY,
    gnome_id INT NOT NULL,
    mushroom_house_id INT NOT NULL,
    PRIMARY KEY (occupancy_id),
    FOREIGN KEY (gnome_id) REFERENCES gnome(gnome_id),
    FOREIGN KEY (mushroom_house_id) REFERENCES mushroom_house(mushroom_house_id)
);