**There are 3 Yaml files listed above to run the build, deploy and destroy pipelines in the Azure DevOps using the azure pipeline Agent pool(not self hosted).** 

**Dependencies you must have,**
1. valid Azure cloud portal subscription. [here](https://portal.azure.com/#home)
2. valid Organization and project created in Azure DevOps portal.(Azure DevOps portal is different from Azure Cloud portal, but works with the same Azure Cloud portal subscirption) [here](https://aex.dev.azure.com/me?mkt=en-US)
3. valid service connection between the Azure devOps portal and Azure Cloud portal, refer [here](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops) for further details.
4. create(if not already) the necessary storage resource group, storage account and container to store the terraform tfstate file.
5. Infracost subscription (optional). [here] (https://www.infracost.io/) and set the pipeline variables as specified below,
![image](https://github.com/user-attachments/assets/928becf8-e628-4974-9525-3a3aeec338f8)

**Build Pipeline - Workflow - Manual Trigger**

1. Terraform
Init Right &rarr; Scan Code & copy (optional)  Validate --> Format --> Plan --> Estimate Cost and copy (optional)

2. File Management
Archive Build Files --> Publish Build Artifacts

**Deploy Pipeline - Workflow - Manual Trigger**

1. File Management
Download Build Artifacts --> Extract Files

2. Terraform
Init --> Apply (Plan file from Build Pipeline)

**Destroy Pipeline - Workflow - Manual Trigger**

1. File Management
Downolad Build Artifacts --> Extract Files

2. Terraform
Init --> Destroy (Plan file from Build Pipeline)

