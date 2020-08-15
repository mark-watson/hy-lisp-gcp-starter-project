import hy
import flask_test
from flask_test import app


if __name__ == '__main__':
    # Used when running locally only. When deploying to Google App
    # Engine, a webserver process such as Gunicorn will serve the app.
    app.run(host='localhost', port=8080, debug=True)

