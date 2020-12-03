import os

from flask import Flask
from flask import request
from flask import render_template

app = Flask(__name__)


@app.route("/")
def main():
    return render_template("index.html")


if __name__ == "__main__":
    port = int(os.getenv("APP_PORT", "5050"))
    app.run(host="0.0.0.0", port=port)
