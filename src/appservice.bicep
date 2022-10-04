param location string
// param storageName string

resource appServiceApp 'Microsoft.Web/sites@2021-03-01' = {
  name: 'as-${uniqueString(resourceGroup().id)}'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}

resource appServicePlan 'Microsoft.Web/serverFarms@2021-03-01' = {
  name: 'asp-${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'F1'
  }
}
