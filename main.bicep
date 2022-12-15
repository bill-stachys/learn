
targetScope = 'subscription'

param contregname string
param rgname string
param location string
param sku string

resource createrg 'Microsoft.Resources/resourceGroups@2022-09-01'= {
  name: rgname
  location: location
  tags: {name: 'k1'}
}

module containeregs 'containerreg.bicep'= {
  name: contregname
  scope: createrg
  params: {
    contregname: contregname
    location: location
    sku: sku
  }
  
}
