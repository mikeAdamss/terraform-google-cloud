
# terraform-google-cloud

A run-once simple terraform setup for google cloud services. This script will create an admin project with a terraform remote state. This is a prerequisite to using any of the other scrips and examples in this repository.

Adapted from this: https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform


## Requirements

You must have the Google Cloud SDK gcloud command-line tool intalled and authorized to work with your account per the documentation, here: https://cloud.google.com/sdk/docs/authorizing


## Usage

Export the following

* `export TF_VAR_billing_account=YOUR_BILLING_ACCOUNT_ID`             
Checl the 'billing' tab to get this info.

* `export TF_ADMIN=${USER}-terraform-admin`                           
Run 'whoami' in cloud shell to confirm your username.

* `export TF_CREDS=~/.config/gcloud/${USER}-terraform-admin.json`
Run  'gCloud info' in your terminal to confirm your credentials path.



