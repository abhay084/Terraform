resource "aws_ebs_snapshot" "MySnapshot" {
  volume_id = "Volume-id"
  tags = {
    "Name" = "MySnap"
  }
    
}

resource "aws_ami" "MyAMI" {
  name = "myami-1"
  virtualization_type = "hvm"
  root_device_name = "/dev/xvda"
  tags = {
    "Name" = "Myimg1"
  }

  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = "snapshot-id"
    volume_size = 10
    delete_on_termination = true
  }

}