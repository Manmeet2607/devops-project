terraform{
    backend "local"{
        path = "./terraform.tfstate"
    }
}

//The backend defines where Terraform keeps its state file the JSON file that tracks what resources exist
//"local" backend means the state is stored on your local machine, not in a remote system like S3, GCS, or Terraform Cloud.