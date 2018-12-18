
# terraform-google-cloud

A run-once simple terraform setup for google cloud services. This script will create an admin project with a terraform remote state. This is a prerequisite to using any of the other scrips and examples in this repository.

Adapted from this: https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform


## Requirements

You must have the Google Cloud SDK gcloud command-line tool intalled and authorized to work with your account per the documentation, here: https://cloud.google.com/sdk/docs/authorizing

You must be running python 2.7 (if using pyenv on mac, you can `pyenv install 2.7.8` to avoid clashes with macos python 2.7).


## Usage

* `chmod +x setup.sh`
* ./setup.sh <username> <billing account ID> <path to credentials>
