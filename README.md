
Terraform module to setup a S3 Website with CloudFront, ACM
This module helps you create a S3 website, assuming that:

it runs HTTPS via Amazon’s Certificate Manager ("ACM")

its domain is backed by a Route53 zone

and of course, your AWS account provides you access to all these resources necessary.

This module is available on the Terraform Registry.

This module is a pair with terraform-aws-s3-cloudfront-redirect, which handles redirecting of a DNS hostname to a website, using S3, CloudFront and ACM.

Sample Usage
You can literally copy and paste the following example, change the following attributes, and you’re ready to go:

allowed_ips: set it to “0.0.0.0/0” if it should be publicly accessible

fqdn: set to your static website’s hostname

domain: set to your static website’s base domain name (e.g., xyz.com)

cf_ipv6_enabled: default is true, enable CloudFront IPV6 feature.

single_page_application: default is false. If true, redirects all 404 errors to the specified index_document variable.
