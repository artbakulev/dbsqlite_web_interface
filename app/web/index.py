import sqlite3

import flask as fl

from app.database.database import DB

app = fl.Flask(__name__, static_url_path='',
               static_folder='static',
               template_folder='templates')


@app.route('/', methods=['get', ])
def index():
    db = DB('sources/mastermydb.db')
    tables = db.list_tables()
    return fl.render_template('index.html', tables=tables)


@app.route('/select_table', methods=['get', ])
def api_select_db():
    db = DB('sources/mastermydb.db')

    db.current_table = fl.request.args.get('table_name')
    try:
        cols_names = db.list_columns()
    except sqlite3.OperationalError:
        return fl.redirect('/')

    context = dict(current_table=db.current_table,
                   tables=db.list_tables(),
                   cols_names=cols_names,
                   rows=db.select_all())

    return fl.render_template('db.html', **context)
