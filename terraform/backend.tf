# Local state is used by default so `terraform init` works immediately
# on a fresh checkout with no prior setup.
#
# To move to remote state once the state bucket exists:
#   1. Run `terraform init` (without this block) and `terraform apply` to
#      create your infrastructure, including a dedicated S3 state bucket
#      if you provision one separately.
#   2. Uncomment the backend block below and fill in the bucket name.
#   3. Run `terraform init -migrate-state` to copy local state into S3.
#
# terraform {
#   backend "s3" {
#     bucket       = "REPLACE_WITH_STATE_BUCKET_NAME"
#     key          = "portfolio-site/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true
#   }
# }
