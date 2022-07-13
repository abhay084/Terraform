resource "aws_efs_file_system_policy" "Mypolicy" {
    file_system_id = aws_efs_file_system.MyStandardEFS.id
    policy = <<POLICY
    {
         "Version": "2012-10-17",
         "Id": "efs-policy-wizard-7708e144-b090-4c82-84c3-1c0ede3fa474",
         "Statement": [
        {
            "Sid": "efs-statement-393829aa-9c67-4a67-8f53-2a668dae4028",
            "Effect": "Allow",
            "Principal": {
                "AWS": "*"
            },
            "Action": [
                "elasticfilesystem:ClientRootAccess",
                "elasticfilesystem:ClientWrite"
            ],
            "Condition": {
                "Bool": {
                    "elasticfilesystem:AccessedViaMountTarget": "true"
                }
            }
        }
     ]
    }
    POLICY
}