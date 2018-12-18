
# terraform-google-cloud

A run-once simple terraform setup for google cloud services.

Adapted from this: https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform


## Usage

Export the following

* `export TF_VAR_org_id=YOUR_ORG_ID`
* `export TF_VAR_billing_account=YOUR_BILLING_ACCOUNT_ID`
* `export TF_ADMIN=${USER}-terraform-admin`
* `export TF_CREDS=~/.config/gcloud/${USER}-terraform-admin.json`


