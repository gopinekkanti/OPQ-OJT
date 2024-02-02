terraform {
  backend "s3" {
    bucket = "ojt-s3-bucket-for-tf-state"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "ojt-dynamo-db-table"
  }
}
