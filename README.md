Steps for running this Project
======================

Choose a region, everything will be created in that region

1 - Run the cloudformation file
-------------------------------

This will create 3 objects:

1. A codebuild role with Administrator access
2. An S3 bucket where the Terraform tfstate file will be saved
3. A codebuild project that will run the code (Terraform Resources)

2 - Run the codebuild to create the terraform resources
----------------------------------------------------------

To do this it is necessary click on the “Start the build" (blue button) inside codebuild.

This will trigger the creation of the resources in the environment.

Take a look to the CloudWatch logs and verify that everything is green in codebuild.


3 - Destroy the resources by running a terraform destroy (warning!!)
----------------------------------------------------------

1. Click on "Start the build" (Blue button)
2. Change the destroy variable to *True*
3. Click on "Start the build" (Blue button)

4 - Clean the environment
-------------------------

1. Empty or delete the S3 bucket
2. Delete the cloudformation template/stack

