from flask import Flask

from database_functions import get_db_connection, get_gnomes

app = Flask(__name__)
db = get_db_connection()


@app.route("/gnome", methods=["GET"])
def gnome_index():
    """Returns all gnome details."""

    return get_gnomes(db)




if __name__ == "__main__":

    app.run()