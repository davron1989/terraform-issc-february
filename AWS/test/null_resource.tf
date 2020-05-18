resource "null_resource" "commands_to_run" {
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.wordpress.public_ip}"
    }

    inline = [
      "sudo yum install -y https",
      "sudo systemctl start httpd",
    ]
  }
}
