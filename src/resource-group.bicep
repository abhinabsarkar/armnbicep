// Setting the scope for the resources
targetScope = 'subscription'

@description('Specifies the location for resources.')
param location string
@description('Specifies the name of the resource group.')
param rgName string

// Creating resorce group
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
  tags: {
    id: 'dev'
  }
}
