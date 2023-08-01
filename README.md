Terraform Azure Static Site
This project demonstrates how to host a static website in Azure Blob Storage using Terraform as an Infrastructure-as-Code (IaC) tool to deploy the infrastructure.

Introduction
In this project, we utilize Azure Blob Storage to host the files for our static website. Terraform is employed to manage the infrastructure as code, enabling you to consistently deploy and manage the resources in Azure.

The repository includes a backend.sh script containing Azure CLI commands to create the remote backend for the Terraform state file, allowing multiple team members to collaborate and work on the same infrastructure.

This project was developed as part of the Microsoft Reactor Series to showcase best practices for deploying static websites on Azure using Terraform.

Prerequisites
Before you start deploying the static website, make sure you have the following prerequisites:

An Azure account with the necessary permissions to create resources.
Terraform installed on your local machine. You can download it from the official website.
Azure CLI installed on your local machine. You can download it from the official website.
Getting Started
Clone this repository to your local machine:
bash
Copy code
git clone https://github.com/your-username/terraform-azure-static-site.git
cd terraform-azure-static-site
Create the remote backend for Terraform state file using the backend.sh script:
bash
Copy code
./backend.sh
This script will use Azure CLI to set up a storage account and container for storing the Terraform state file remotely. Ensure you have the appropriate credentials and permissions to create resources in your Azure account.

Initialize Terraform and apply the configuration:
bash
Copy code
terraform init
terraform apply
Terraform will analyze the configuration, create an execution plan, and prompt you to confirm before applying the changes to your Azure environment.

Once the deployment is successful, you will receive the output with the URL of your hosted static website.
Customizing the Website
You can customize the content of your static website by adding files to the website directory. After making changes, use Terraform to apply the updated configuration and redeploy the website.

Clean Up
To remove all resources created by Terraform and delete the hosted static website, use the following command:

bash
Copy code
terraform destroy
Confirm the action when prompted, and Terraform will remove the resources from your Azure environment.

Contributing
Contributions to this project are welcome! If you encounter any issues or have suggestions for improvements, please create a pull request or submit an issue on GitHub.