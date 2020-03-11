## Web-interface for sqlite3 databases

### Prerequisites
- UNIX-based OS (Linux, MacOS)]
- installed Python 3.x

### Database preparing 
- add your database to `/sources` directory
- if you have sql-code for generation from scratch run 
`cat {your_filename}.sql | sqlite3 sources/{new_database_name}.db`
- go to `/app/web/index.py` file and change value of DATABASE variable to your database name

### Environment preparing
- in project root directory (where this README.md is located) run `python -m venv venv`
- if it says that there is no venv module installed, then run `pip instal venv` and do first point again
- run in terminal `source venv/bin/activate`
- run in terminal `pip install -r requirements.txt`


### Running
- run `python main.py`
- open browser and enter url `127.0.0.1:5000`