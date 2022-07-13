resource "aws_efs_file_system" "MyfileSystem_oneZone" {
  tags = {
    "Name" = "MyEFSstorage"
  }
  
  availability_zone_name = "ap-south-1b"
  encrypted = false
  lifecycle_policy{
    transition_to_ia = "AFTER_7_DAYS"
  }

  lifecycle_policy{
    transition_to_primary_storage_class = "AFTER_1_ACCESS"
  }
  performance_mode = "generalPurpose"
  throughput_mode = "bursting"

}