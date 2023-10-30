"""Functions for interacting with the database."""

from psycopg2 import connect
from psycopg2.extensions import connection
from psycopg2.extras import RealDictCursor


def get_db_connection() -> connection:
    """Returns a live DB connection."""

    return connect(
        dbname="enchanted_forest",
        cursor_factory=RealDictCursor
    )


def get_gnomes(db) -> list[dict]:
    """Returns a list of gnomes"""

    with db.cursor() as cur:
        cur.execute("SELECT * FROM gnome;")
        data = cur.fetchall()

    return data


def get_occupants(mushroom_house_id, db) -> list[dict]:
    """Return all the gnomes living in a specific house."""

    query = """
        SELECT G.*
        FROM mushroom_occupancy AS O
        LEFT JOIN gnome AS G
            ON (O.gnome_id = G.gnome_id)
        WHERE O.mushroom_house_id = %s;"""

    with db.cursor() as cur:
        cur.execute(query, [mushroom_house_id])
        data = cur.fetchall()

    return data
