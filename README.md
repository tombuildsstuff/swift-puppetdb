# Swift-PuppetDB
Connect to PuppetDB from Swift

## Usage
```swift
let puppetDB = PuppetDB(configuration: Configuration(host: "puppetdb.my-domain.com", port: 8080))
```

### Get All Nodes
```swift
puppetDB.getAllNodes(done: { (nodes: AllNodesResponse) in
    let nodeNames = nodes.nodes.map {
        (metaData: NodeMetaData) -> String in
        return metaData.certname
    }
    print(nodeNames)
}, error: {
    (err: Error) -> () in
    print(err)
})
```

### Licence
MIT
