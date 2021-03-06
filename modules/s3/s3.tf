#Creating S3 Bucket with versioning enable
provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "bucket" {

  bucket = "${var.bucket-name}"

  

  acl    = "${var.acl}"


  versioning {

    enabled = "${var.versioning-enable}"

  }



  lifecycle {

    prevent_destroy = false

  }



  tags = {

    Name = "${var.bucket-name}"

  }

}
