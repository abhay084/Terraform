resource "aws_ebs_volume" "VolEncryption" {
    availability_zone = "ap-south-1b"
    size = 2
    tags = {
      "Name" = "EncryptedVolume"
    }

    encrypted = true
    type = "standard"
    
}