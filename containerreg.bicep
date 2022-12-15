
param location string = 'eastus'
param contregname string
param sku string

resource contreg 'Microsoft.ContainerRegistry/registries@2021-09-01'= {
  name: contregname
  location: location
  sku: {
    name: sku
  }
}

output loginServer string = contreg.properties.loginServer
output name string = contreg.name
