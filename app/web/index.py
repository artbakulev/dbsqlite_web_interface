import sqlite3

import flask as fl
from flask import g

from app.database.database import list_tables, insert_all, list_columns, \
    select_all, delete_row, submit_row

app = fl.Flask(__name__, static_url_path='',
               static_folder='static',
               template_folder='templates')
DATABASE = './sources/db.db'


def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(DATABASE)
    return db


@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()


@app.route('/', methods=['get', ])
def index():
    cur = get_db().cursor()
    tables = list_tables(cur)
    return fl.render_template('index.html', tables=tables)


@app.route('/select_table', methods=['get', 'post'])
def api_select_db():
    current_table = fl.request.args.get('table_name')
    cur = get_db().cursor()

    if fl.request.method == 'POST':
        json = fl.request.json

        idx = json.get('index', None)
        values = json.get('values', None)
        if idx is None:
            insert_all(cur, current_table, *values)
        elif values is None:
            delete_row(cur, current_table, idx)
        else:
            submit_row(cur, current_table, idx, *values)
        return fl.make_response(fl.jsonify(200))

    try:
        cols_names = list_columns(cur, current_table)
    except sqlite3.OperationalError:
        return fl.redirect('/')

    context = dict(current_table=current_table,
                   tables=list_tables(cur),
                   cols_names=cols_names[1:],
                   rows=select_all(cur, current_table))
    return fl.render_template('db.html', **context)
