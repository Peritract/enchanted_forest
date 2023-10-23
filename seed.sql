-- Adds seed data to the database

INSERT INTO gnome
    (gnome_name, hat_colour, age, gender)
VALUES
    ('Oswald', 'blue', 270, 'M'),
    ('Priscilla', 'green', 231, 'F'),
    ('Harriet', 'brown', 118, 'F'),
    ('Ashley', 'red', 139, 'X'),
    ('Tumney', 'white', 63, 'F'),
    ('Pelk', 'yellow', 274, 'M'),
    ('Marvin', 'pink', 74, 'M'),
    ('Norma', 'cream', 55, 'F'),
    ('Rhiannon', 'cerise', 205, 'F'),
    ('Tappon', 'crimson', 113, 'M')
;

INSERT INTO mushroom_house
    (house_number, street_name, max_occupants, roof_colour)
VALUES
    (12, 'Brookside', 4, 'red'),
    (9, 'Brownie Boulevard', 1, 'green'),
    (86, 'Elder Grove', 3, 'white'),
    (31, 'Apple Lane', 2, 'red')
;

INSERT INTO mushroom_occupancy
    (gnome_id, mushroom_house_id)
VALUES
    (1, 3),
    (2, 3),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 1),
    (7, 2),
    (8, 2),
    (9, 4),
    (10, 4)
;