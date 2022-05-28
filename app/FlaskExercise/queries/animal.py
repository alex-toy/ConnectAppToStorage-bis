import config as cfg
import pyodbc
from FlaskExercise import app, db
from flask import flash
from werkzeug.utils import secure_filename
from azure.storage.blob import BlobServiceClient
import uuid
import os

def getAll():
    connection_string = cfg.getConnectionString()
    query = "select * from [dbo].[ANIMALS];"
    animals = []
    with pyodbc.connect(connection_string) as conn:
        with conn.cursor() as cursor:
            cursor.execute(query)
            row = cursor.fetchone()
            while row:
                animals.append(row)
                row = cursor.fetchone()
            animals.append(row)

    return animals


def get(id) :
    connection_string = cfg.getConnectionString()
    query = f"select * from [dbo].[ANIMALS] WHERE id = {id};"
    animals = []
    with pyodbc.connect(connection_string) as conn:
        with conn.cursor() as cursor:
            cursor.execute(query)
            row = cursor.fetchone()
            animals.append(row)
            return row

    return animals[0]



blob_container = app.config['BLOB_CONTAINER']
blob_account = app.config['BLOB_ACCOUNT']
blob_storage_key = app.config['BLOB_STORAGE_KEY']
storage_url = f"https://{blob_account}.blob.core.windows.net/{blob_container}"
blob_service = BlobServiceClient(account_url=storage_url, credential=blob_storage_key)


def store_image(file, animalId):
    animal = get(animalId)
    image_path = animal.image_path
    if file:
        filename = secure_filename(file.filename)
        fileExtension = filename.rsplit('.', 1)[1]
        randomFilename = str(uuid.uuid1())
        filename = randomFilename + '.' + fileExtension
        try:
            blob_client = blob_service.get_blob_client(container=blob_container, blob=filename)
            blob_client.upload_blob(file)
            if image_path:
                # blob_client = blob_service.get_blob_client(container=blob_container, blob=filename)
                blob_client.delete_blob()
        except Exception as err:
            flash(err)
        # self.image_path = filename
    # db.session.commit()


