#!/usr/bin/python3
"""Starts a Flask web application.
<<<<<<< HEAD

=======
>>>>>>> efcee7753eb3507bc2768be440ef5b16e1f145b4
The application listens on 0.0.0.0, port 5000.
Routes:
    /: Displays 'Hello HBNB!'
"""
from flask import Flask

app = Flask(__name__)


@app.route("/", strict_slashes=False)
def hello_hbnb():
    """Displays 'Hello HBNB!'"""
    return "Hello HBNB!"


if __name__ == "__main__":
<<<<<<< HEAD
    app.run(host="0.0.0.0")
=======
    app.run(host="0.0.0.0", port=5000)
>>>>>>> efcee7753eb3507bc2768be440ef5b16e1f145b4
