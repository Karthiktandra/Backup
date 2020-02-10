# Terraform
Use Terraform scripts to deploy MS Azure services

Here I have written scripts as main file, Variable file , tfvar file, and Auth file. 
Main file contains the code to deploy the service.
Variable file contains the declared variables for the main file. 
Tfvars file contains the declared variables for the main file in Json format for easy understanding. 
Auth file contains the SPN to authenticate Azure portal. 

We use "terraform init" command to initialize the main file. 
We use "terraform plan" command to plan the deployment and check if we have any errors in code. 
We use "terraform apply" command to apply the deployment and start consuming the services.

Step1: Create Service Principle Name(SPN) in Azure portal.

Create SPN using the below bash command in Azure portal. 

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/SUBSCRIPTION_ID"

The output looks like 

 "appId": "b59396eb-1925-4328-b719-*********",

  "displayName": "azure-cli-2020-01-2********",
  
  "name": "http://azure-cli-2020-01-24-********",
  
  "password": "f9dd9fb0-1f8a-4a54-998c-**********",
  
  "tenant": "7571a489-bd29-4f38-b9a6-**********"
  
  Copy the output and save it in notepad for further use and paste the values as the following from the output.
  
 subscription_id = Subscription ID 

 Client_ID = App id 
 
 client_secret = Password

 tenant_id = Tenant ID	
 
 The created SPN looks as below and store that in the notepad for further use. 

subscription_id	= "b75f9849-8afd-4e03-95ce-***********"

client_id	= "b59396eb-1925-4328-b71*************"

client_secret 	= "f9dd9fb0-1f8a-4a54-***********"

tenant_id	= "7571a489-bd29-4f38-b9a6-************" 









