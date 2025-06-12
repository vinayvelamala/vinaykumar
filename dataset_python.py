from google.cloud import bigquery

client = bigquery.Client()
dataset_id = input("Enter project_id.dataset_name")
dataset = bigquery.Dataset(dataset_id)
dataset = client.create_dataset(dataset, timeout=30)  
print("Created dataset {}.{}".format(client.project, dataset.dataset_id))