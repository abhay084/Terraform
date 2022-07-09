resource "aws_ebs_snapshot_copy" "CreateEncryptedSnapshot" {
    source_region = "ap-south-1"
    source_snapshot_id = aws_ebs_snapshot.MySnapshot.id
    tags = {
      "Name" = "EncryptedSnapshot"
    }
    encrypted = true
    storage_tier = "standard"

  
}