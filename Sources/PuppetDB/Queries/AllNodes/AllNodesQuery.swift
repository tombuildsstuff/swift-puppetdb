public extension PuppetDB {
    
    public func getAllNodes(done: @escaping (AllNodesResponse) -> (), error: @escaping (Error) -> ()) {
        self.get("/nodes") {
            (err, json: [[String: AnyObject]]?) in
            
            if let theError = err {
                error(theError)
                return
            }
            
            let response = AllNodesResponse(dictionary: json!)
            done(response)
        }
    }
    
}
