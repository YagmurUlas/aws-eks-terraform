provider "aws" {
  region = var.region
}

resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name = var.origin_domain_name
    origin_id   = "example-origin"
  }

  enabled             = true
  is_ipv6_enabled     = true
  default_root_object = "index.html"

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "example-origin"

    forwarded_values { // how CloudFront handles query strings and cookies when forwarding requests to the origin server.
      query_string = false
      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
