
## Setup

This script sets up a terraform remote backed for google cloud services.

## Usage

Set the following env variables (export in terminal is fine, we won't use them again).

| Environment variable      | Description
| ------------------------- | ------------------------------------------------------------
| TF_ADMIN                  | This will become the name of the project.
| TF_GOOGLE_BILLING_ACCOUNT | What is sounds like.
| TF_CREDS                  | The path to where you will be keeping the credentials .json.


Then...
* Clone this repo.
* `chmod +x setup.sh`
* `./setup.sh`
