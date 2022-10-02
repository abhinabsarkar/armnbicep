# Azure Resource Manager (ARM)
* [Azure Resource Manager (ARM) - Microsoft documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview)

When you send a request through any of the Azure APIs, tools, or SDKs, Resource Manager receives the request. It authenticates and authorizes the request before forwarding it to the appropriate Azure service. Because all requests are handled through the same API, you see consistent results and capabilities in all the different tools.

![alt txt](/images/consistent-management-layer.png)

* [ARM templates - Microsoft documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/overview)

Azure Resource Manager templates (ARM templates) is a JSON file that defines the infrastructure and configuration for your project. The template uses declarative syntax, which lets you state what you intend to deploy without having to write the sequence of programming commands to create it. In the template, you specify the resources to deploy and the properties for those resources.

Azure Resource Manager can receive the request in the form of ARM templates or from other sources like Terraform, Az CLI, PowerShell, etc which it sends to the Resource Providers after authentication & authorization.

![alt txt](/images/template-processing.png)

When you deploy a template, Resource Manager converts the template into REST API operations. For example, when Resource Manager receives a template with the following resource definition:

```json
"resources": [
  {
    "type": "Microsoft.Storage/storageAccounts",
    "apiVersion": "2019-04-01",
    "name": "mystorageaccount",
    "location": "westus",
    "sku": {
      "name": "Standard_LRS"
    },
    "kind": "StorageV2",
    "properties": {}
  }
]
```
It converts the definition to the following REST API operation, which is sent to the Microsoft.Storage resource provider:
```http
PUT
https://management.azure.com/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/mystorageaccount?api-version=2019-04-01
REQUEST BODY
{
  "location": "westus",
  "sku": {
    "name": "Standard_LRS"
  },
  "kind": "StorageV2",
  "properties": {}
}
```