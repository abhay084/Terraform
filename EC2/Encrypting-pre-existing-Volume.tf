resource "aws_ebs_volume" "myVolume" {
  availability_zone = "ap-south-1b"
  size = 1

  tags = {
    "Name" = "UnencryptedVol"
  }

  type = "standard"

}

resource "aws_ebs_snapshot" "MySnapshot" {
    volume_id = aws_ebs_volume.myVolume.id
    tags = {
      "Name" = "MySnapshot"
    }
  
    storage_tier = "standard"

}

resource "aws_ebs_volume" "EncryptedVolumeUsingUnencryptedSnapshot" {
    availability_zone = "ap-south-1b"
    tags = {
      "Name" = "Vol_encrypted"
    }
    snapshot_id = aws_ebs_snapshot.MySnapshot.id
    encrypted = true
  
}