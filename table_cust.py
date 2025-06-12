from google.cloud import bigquery

# Construct a BigQuery client object
client = bigquery.Client()

# Set table_id to the ID of the table to create
table_id = "project-bigquery-448808.Project_VK.customers_info"

# Define schema with a STRUCT (RECORD) column
schema = [
    bigquery.SchemaField("full_name", "STRING", mode="REQUIRED"),
    bigquery.SchemaField("age", "INTEGER", mode="REQUIRED"),
    bigquery.SchemaField(
        "contact_info", "RECORD", mode="NULLABLE", fields=[
            bigquery.SchemaField("email", "STRING", mode="NULLABLE"),
            bigquery.SchemaField("phone_number", "STRING", mode="NULLABLE"),
        ]
    ),
    bigquery.SchemaField(
        "address", "RECORD", mode="NULLABLE", fields=[
            bigquery.SchemaField("street", "STRING", mode="NULLABLE"),
            bigquery.SchemaField("city", "STRING", mode="NULLABLE"),
            bigquery.SchemaField("state", "STRING", mode="NULLABLE"),
            bigquery.SchemaField("zip_code", "STRING", mode="NULLABLE"),
        ]
    ),
    bigquery.SchemaField("created_at", "TIMESTAMP", mode="NULLABLE"),
    bigquery.SchemaField("is_active", "BOOLEAN", mode="NULLABLE"),
]

# Create table object
table = bigquery.Table(table_id, schema=schema)

# Make an API request to create the table
table = client.create_table(table)

print(f"✅ Created table {table.project}.{table.dataset_id}.{table.table_id}")
