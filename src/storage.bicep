param storageLocation string

resource storageAcct 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  // Name has to be unique, so creating a uniquestring. The same unique string will be used for all resources in the resource group 
  name: 'storage${uniqueString(resourceGroup().id)}'
  location: storageLocation
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'Storage'
  properties: {}
}
