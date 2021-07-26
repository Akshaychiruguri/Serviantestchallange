# Note: This should be done after the bucket and dynamodb is created. Terraform init would be saficient afterwards.

# Back end to store the state file

terraform {
  backend "s3" {
    # PER ENV: adapt these when copying!
    key = "env/dev/us-east-1/state.tfstate"


    # Common for security scripts
    region         = "us-east-1"
    bucket         = "techautomationchallenge1-s3-terraform-remote-state"
    dynamodb_table = "techautomationchallenge1-dynamodb-terraform-remote-state-lock"
    encrypt        = true
    profile        = "dev-profile-terraform"
  }

}
