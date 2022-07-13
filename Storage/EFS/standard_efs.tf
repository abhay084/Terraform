resource "aws_efs_file_system" "MyStandardEFS" {
  tags = {
    "Name" = "MyEFFS_standard"
  }

  encrypted = false  
  lifecycle_policy {
    transition_to_ia = "AFTER_7_DAYS"
  }

  lifecycle_policy {
    transition_to_primary_storage_class = "AFTER_1_ACCESS"
  }

  performance_mode = "generalPurpose"

  throughput_mode = "bursting"
  
}