
# terraform-google-cloud

A run-once simple terraform setup for google cloud services. This script will create an admin project with a terraform remote state. This is a prerequisite to using any of the other scrips and examples in this repository.

Adapted from this: https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform


## Requirements

You must have the Google Cloud SDK gcloud command-line tool intalled and authorized to work with your account per the documentation, here: https://cloud.google.com/sdk/docs/authorizing


## Usage

Export the following

* `export TF_VAR_org_id=YOUR_ORG_ID`
* `export TF_VAR_billing_account=YOUR_BILLING_ACCOUNT_ID`
* `export TF_ADMIN=${USER}-terraform-admin`
* `export TF_CREDS=~/.config/gcloud/${USER}-terraform-admin.json`


