resource "aws_ebs_volume" "MultiAttach" {
    availability_zone = "ap-south-1b"
    size = 5
    tags = {
      "Name" = "MultiAttachVolume"

    }
    type = "io2"
    multi_attach_enabled = true
    iops = 500
}