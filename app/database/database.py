import re


def list_tables(cursor):
    sql = "SELECT name FROM main.sqlite_master"
    tables_names = [table[0] for table in cursor.execute(sql)]
    pattern = re.compile('^sqlite_autoindex.+$')
    filtered_tables_names = filter(lambda i: not pattern.match(i), tables_names)
    return list(filtered_tables_names)


def list_columns(cursor, table):
    sql = f"PRAGMA table_info({table})"
    return [col_name[1] for col_name in cursor.execute(sql)]


def insert_all(cursor, table, *args):
    from app.web.index import get_db
    sql = f'INSERT INTO {table} VALUES (' \
          f'{(",".join(list(map(str, args))))})'
    cursor.execute(sql)
    get_db().commit()


def delete_row(cursor, table, idx):
    from app.web.index import get_db
    sql = f'DELETE FROM {table} WHERE id = {idx}'
    cursor.execute(sql)
    get_db().commit()


def submit_row(cursor, table, *args):
    delete_row(cursor, table, args[0])
    insert_all(cursor, table, *args)


def select_all(cursor, table):
    sql = f"SELECT * FROM {table}"
    return [row for row in cursor.execute(sql)]
