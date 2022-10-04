// Setting the scope for the resources
targetScope = 'subscription'

// param storageName string
param storageLocation string = 'canadacentral'

@description('Specifies the location for resources.')
param location string = 'canadacentral'
@description('Specifies the name of the resource group.')
param rgName string = 'rg-dev1'

// // Creating resorce group
// resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
//   name: rgName
//   location: location
//   tags: {
//     id: 'dev'
//   }
// }


module rg 'resource-group.bicep' = {
  name: 'rgModule'
  scope: subscription()
  params: {
    rgName: rgName
    location: location
  }
}

module storageAcct 'storage.bicep' = {
  name: 'storageModule'
  scope: resourceGroup(rgName)
  params: {
    storageLocation: storageLocation    
  }
}

module appServiceApp 'appservice.bicep' = {
  name: 'appServiceModule'
  scope: resourceGroup(rgName)
  params: {
      location: location
  }
}

// resource appServicePlan 'Microsoft.Web/serverFarms@2021-03-01' = {
//   name: 'toy-product-launch-plan'
//   scope: resourceGroup(rgName)
//   location: 'westus3'
//   sku: {
//     name: 'F1'
//   }
// }
