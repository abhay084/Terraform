resource "aws_ebs_snapshot" "SnapOne" {
    volume_id = aws_ebs_volume.terra_vol.id

    tags = {
      "Name" = "Snap-terra-vol"
    }
    storage_tier = "standard"
    
  
}