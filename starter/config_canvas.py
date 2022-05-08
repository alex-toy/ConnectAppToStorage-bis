import os
basedir = os.path.abspath(os.path.dirname(__file__))

class Config(object):
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'secret-key'

    SQL_SERVER = os.environ.get('SQLServerName') or '[SQL_SERVER_GOES_HERE]'
    SQL_DATABASE = os.environ.get('SQLBDName') or '[SQL_DATABASE_GOES_HERE]'
    SQL_USER_NAME = os.environ.get('SQLAdminUser') or '[SQL_USER_NAME_GOES_HERE]'
    SQL_PASSWORD = os.environ.get('SQLAdminPassword') or '[SQL_PASSWORD_GOES_HERE]'
    SQLALCHEMY_DATABASE_URI = 'mssql+pyodbc://' + SQL_USER_NAME + '@' + SQL_SERVER + ':' + SQL_PASSWORD + '@' + SQL_SERVER + ':1433/' + SQL_DATABASE + '?driver=ODBC+Driver+17+for+SQL+Server'
    SQLALCHEMY_TRACK_MODIFICATIONS = False

    BLOB_ACCOUNT = os.environ.get('SAName') or '[BLOB_ACCOUNT_GOES_HERE]'
    BLOB_STORAGE_KEY = os.environ.get('BLOB_STORAGE_KEY') or '[BLOB_STORAGE_KEY_GOES_HERE]'
    BLOB_CONTAINER = os.environ.get('SCName') or '[BLOB_CONTAINER_GOES_HERE]'
