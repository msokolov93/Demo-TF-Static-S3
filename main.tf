provider "aws" {
  access_key = "YOUR_KEY"
  secret_key = "YOUR_SECRET_KEY"
  region     = "eu-west-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "s3-website-test-fivexl"
  acl    = "public-read"
  policy = file("policy.json")

}

resource "local_file" "indexpage" {
  content = "<h1>Hello, FivexL!</h1>"
  filename = "index.html"
}

resource "aws_s3_bucket_object" "index" {

  bucket = aws_s3_bucket.b.id

  key    = "index.html" # name in the bucket

  acl    = "public-read"  # or can be "private"

  source = "index.html"

  content_type = "text/html"

}

