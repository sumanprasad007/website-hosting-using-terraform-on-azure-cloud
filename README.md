# Terraform Azure Static Site

This project demonstrates how to host a static website in Azure Blob Storage using Terraform as an Infrastructure-as-Code (IaC) tool to deploy the infrastructure.

## Introduction

In this project, we utilize Azure Blob Storage to host the files for our static website. Terraform is employed to manage the infrastructure as code, enabling you to consistently deploy and manage the resources in Azure.

The repository includes a `backend.sh` script containing Azure CLI commands to create the remote backend for the Terraform state file, allowing multiple team members to collaborate and work on the same infrastructure.

This project was developed as part of the Microsoft Reactor Series to showcase best practices for deploying static websites on Azure using Terraform.

## Prerequisites

Before you start deploying the static website, make sure you have the following prerequisites:

- An Azure account with the necessary permissions to create resources.
- Terraform installed on your local machine. You can download it from the [official website](https://www.terraform.io/downloads.html).
- Azure CLI installed on your local machine. You can download it from the [official website](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).

## Getting Started

1. Clone this repository to your local machine:

```bash
git clone https://github.com/sumanprasad007/website-hosting-using-terraform-on-azure-cloud.git
cd website-hosting-using-terraform-on-azure-cloud