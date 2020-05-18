data "aws_route53_zone" "selected" {
  name         = "davrononline.com."
  private_zone = true
}

resource "aws_route53_record" "review1-record" {
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
  name    = "www.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_id}"]
}