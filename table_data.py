from google.cloud import bigquery

# Construct a BigQuery client object
client = bigquery.Client()

# Set table_id to the table where you want to insert data
table_id = "project-bigquery-448808.Project_VK.table_create"

# Define 10 rows of data to insert
rows_to_insert = [
    {"full_name": "Alice Johnson", "age": 29},
    {"full_name": "Bob Smith", "age": 35},
    {"full_name": "Charlie Brown", "age": 40},
    {"full_name": "David Williams", "age": 22},
    {"full_name": "Ella Martinez", "age": 31},
    {"full_name": "Frank Thomas", "age": 28},
    {"full_name": "Grace Lee", "age": 45},
    {"full_name": "Hannah Clark", "age": 38},
    {"full_name": "Ian White", "age": 26},
    {"full_name": "Jack Wilson", "age": 33},
]

Insert data into the table
errors = client.insert_rows_json(table_id, rows_to_insert)

# Check if there were any errors
if errors == []:
    print("✅ Data inserted successfully!")
else:
    print(f"❌ Errors while inserting data: {errors}")
