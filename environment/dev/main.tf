provider "aws" {
  region = "us-east-1"
}


module "cloudfront" {
  source = "../../modules/cloudfront"
  bucket-name        = "dev-eslam-com"
  tag_key_Name       =  "dev-eslam-com"
  comment            = "DevOps Automation By islam shehata"
  domain_aliases     = "*.eslam.com"
  logs_prefix        = "logs"
  Environment        = "dev"
  #  One of PriceClass_All, PriceClass_200, PriceClass_100
  price_class        = "PriceClass_All"
  # PUT THE ARN OF YOUR AWS CERTIFICATE MUST BE IN VIRGINIA REGION
  acm_certificate_arn = "arn:aws:acm:us-east-1:758522618875:certificate/30e28cb8-c7f8-4fec-8b1e-5064b8b1e5c9"
}
