
TF_ADMIN="terraform-admin-$1"
TF_GOOGLE_BILLING_ACCOUNT="$2"
TF_CREDS="$3/$1-terraform-admin.json"


# Create a new project and link it to your billing account:
gcloud projects create ${TF_ADMIN} \
  --set-as-default

gcloud beta billing projects link ${TF_ADMIN} \
  --billing-account ${TF_GOOGLE_BILLING_ACCOUNT}


# Create the service account in the Terraform admin project and download the JSON credentials:
gcloud iam service-accounts create terraform \
  --display-name "Terraform admin account"

gcloud iam service-accounts keys create ${TF_CREDS} \
  --iam-account terraform@${TF_ADMIN}.iam.gserviceaccount.com


# Grant the service account permission to view the Admin Project and manage Cloud Storage:
gcloud projects add-iam-policy-binding ${TF_ADMIN} \
  --member serviceAccount:terraform@${TF_ADMIN}.iam.gserviceaccount.com \
  --role roles/viewer

gcloud projects add-iam-policy-binding ${TF_ADMIN} \
  --member serviceAccount:terraform@${TF_ADMIN}.iam.gserviceaccount.com \
  --role roles/storage.admin

# Basic api permissions
# TODO - pass this in per-project

echo Enable cloudresourcemanager
gcloud services enable cloudresourcemanager.googleapis.com

echo Enable cloudbilling
gcloud services enable cloudbilling.googleapis.com

echo Enable iam
gcloud services enable iam.googleapis.com

echo Enable compute
gcloud services enable compute.googleapis.com


# Create the remote backend bucket in Cloud Storage and the backend.tf file for storage of the terraform.tfstate file:
gsutil mb -p ${TF_ADMIN} gs://${TF_ADMIN}

cat > backend.tf <<EOF
terraform {
 backend "gcs" {
   bucket  = "${TF_ADMIN}"
   prefix  = "terraform/state"
   project = "${TF_ADMIN}"
 }
}
EOF

# Enable versioning for said remote bucket:
gsutil versioning set on gs://${TF_ADMIN}


# Configure your environment for the Google Cloud Terraform provider:
export GOOGLE_APPLICATION_CREDENTIALS=${TF_CREDS}
export GOOGLE_PROJECT=${TF_ADMIN}

# Initialise the project
# TODO - necessary?
terraform init
