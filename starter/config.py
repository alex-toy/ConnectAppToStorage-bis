import os
from pathlib import Path
import configparser

basedir = os.path.abspath(os.path.dirname(__file__))

p1 = Path(os.path.abspath(os.curdir)).parent
file_path = ".\commands\Configs\\var.cfg"
p2 = Path(file_path)
config_path = os.path.join(p1, p2)
config = configparser.ConfigParser()
config.read_file(open(config_path))


def getConnectionString():
    server = f"{config['SQL']['SQL_SERVER']}.database.windows.net" 
    database = config['SQL']['SQL_DATABASE']
    username = config['SQL']['SQL_USER_NAME']
    password = config['SQL']['SQL_PASSWORD'] 
    driver= '{ODBC Driver 17 for SQL Server}'
    connection_string = 'DRIVER='+driver+';SERVER=tcp:'+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password
    return connection_string


class Config(object):
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'secret-key'
    SQL_SERVER = (os.environ.get('SQLServerName') or config['SQL']['SQL_SERVER']) + ".database.windows.net" 
    SQL_DATABASE = os.environ.get('SQLBDName') or config['SQL']['SQL_DATABASE']
    SQL_USER_NAME = os.environ.get('SQLAdminUser') or config['SQL']['SQL_USER_NAME']
    SQL_PASSWORD = os.environ.get('SQLAdminPassword') or config['SQL']['SQL_PASSWORD']
    SQLALCHEMY_DATABASE_URI = getConnectionString()
    SQLALCHEMY_TRACK_MODIFICATIONS = False

    BLOB_ACCOUNT = os.environ.get('SAName') or config['BLOB']['BLOB_ACCOUNT']
    BLOB_STORAGE_KEY = os.environ.get('BLOB_STORAGE_KEY') or config['BLOB']['BLOB_STORAGE_KEY']
    BLOB_CONTAINER = os.environ.get('SCName') or config['BLOB']['BLOB_CONTAINER']
    

    
    

    

