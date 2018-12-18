
# terraform-google-cloud

A run-once simple terraform setup for google cloud services.

Adapted from this: https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform


## Usage

All args are set via environmental variables. While you *could* pass the args in directly, the intention here is to allow for validation of all arguments - before provisioning.

| Environment variable       | Default                           | Description
| -------------------------- | --------------------------------- | -----------
| GIT_WEBHOOK_SECRET         | None                              | The secret for authenticating incoming requests.
| SLACK_WEBHOOK              | None                              | The endpoint for messaging to slack.
| PORT                       | None                              | The listen and serve port.
| PUBLIC_IP                  | None                              | The public IP address for accessing logs.
