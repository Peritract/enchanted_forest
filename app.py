"""A simple server."""

from flask import Flask

from database_functions import get_db_connection, get_gnomes, get_occupants

app = Flask(__name__)
db = get_db_connection()


@app.route("/gnome", methods=["GET"])
def gnome_index():
    """Returns all gnome details."""

    return get_gnomes(db)


@app.route("/mushroom_house/<int:mushroom_house_id>/occupants", methods=["GET"])
def get_house_occupants(mushroom_house_id: int) -> list[dict]:
    """Returns a list of gnomes occupying a particular dwelling."""

    return get_occupants(mushroom_house_id, db)


if __name__ == "__main__":

    app.run()
