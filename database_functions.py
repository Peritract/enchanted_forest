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
    
    return [dict(x) for x in data]