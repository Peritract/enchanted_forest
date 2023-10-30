# Enchanted forest

A small database to practise SQL with.

## Setup

This project (perhaps unreasonably) assumes that you have a local Postgres installation running.

Run `psql postgres -c "CREATE DATABASE enchanted_forest"` to create the local database.

Run `psql enchanted_forest -f schema.sql` to create the tables within it.

Run `psql enchanted_forest -f seed.sql` to fill the database with starting data.

## Entity-relationship diagram

[Link](https://drawsql.app/teams/sigma-labs/diagrams/enchanted-forest)

## Development

`python app.py` runs the server on port `5000`.

## Quality control

- `pytest`
- `pylint *.py`
