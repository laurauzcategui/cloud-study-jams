# Use gsutil help <command or topic> for detailed help.
gsutil help <command>

# gcloud help and any search terms for help 
gcloud help <search terms> 

# ml-engine Manage Cloud ML Engine jobs and models.
# train run a Cloud ML Engine training job locally
gcloud ml-engine local train [options]

# Creating buckets with mb ( Make buckets )
gsutil mb gs://<bucket name>

# Submit a Cloud Machine Learning training job
gcloud ml-engine jobs submit training

# Create a new Cloud ML Engine model
gcloud ml-engine models create <model name>

# Create a dataset, table, view, or transfer 
# configuration with this name.
bq mk <dataset name>

# create a table with schema
bq mk --schema <[FIELD]:[DATA_TYPE],[FIELD]:[DATA_TYPE]> -t <dataset name>.<table name> 

# Run a pipeline against Dataflow 
python -m apache_beam.examples.wordcount --project qwiklabs-gcp-e305a559fb45ff0c \
  --runner DataflowRunner \
  --staging_location $BUCKET/staging \
  --temp_location $BUCKET/temp \
  --output $BUCKET/results/output

# Create a dataproc cluster from CLI with Jupyter enabled 
gcloud dataproc clusters create cluster-name \
  --optional-components=JUPYTER \
  --image-version=1.3 


  