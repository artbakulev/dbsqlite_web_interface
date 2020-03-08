import sqlite3 as s3


class DB:
    def __init__(self, database):
        self.conn = s3.connect(database)
        self.cursor = self.conn.cursor()
        self.current_table = None

    def list_tables(self):
        sql = "SELECT name FROM main.sqlite_master"
        return [table[0] for table in self.cursor.execute(sql)]

    def list_columns(self):
        sql = f"PRAGMA table_info({self.current_table})"
        return [col_name[1] for col_name in self.cursor.execute(sql)]

    def select_all(self):
        sql = f"SELECT * FROM {self.current_table}"
        return [row for row in self.cursor.execute(sql)]

    def __del__(self):
        self.conn.close()


db = DB('sources/mastermydb.db')
