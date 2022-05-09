from azure.storage.blob import BlobServiceClient, BlobClient
from werkzeug.utils import secure_filename
import uuid

blob_container = "flask-images"
blob_account = "flaskstorageaccount"
storage_url = f"https://{blob_account}.blob.core.windows.net/{blob_container}"
blob_storage_key = "BDMh+8lxyzc9Ep5Ce4mi2Mf0NUqpOd5IQoPVpiCDdUhyoJl+ufakh6EfGdpIz92EryCwFq02oTul+AStsRonag=="
blob_service = BlobServiceClient(account_url=storage_url, credential=blob_storage_key)


upload_file_path = "C:/Users/alex/OneDrive - DTeK CONSULTING/Images/tiger.jpg"
local_file_name = str(uuid.uuid4()) + ".jpg"


blob_service = BlobServiceClient(account_url=storage_url, credential=blob_storage_key)
blob_client = blob_service.get_blob_client(container=blob_container, blob=local_file_name)

with open(upload_file_path, "rb") as data:
    blob_client.upload_blob(data)


