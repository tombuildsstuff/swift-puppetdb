public extension PuppetDB {
    
    public func getAllFactNames(done: @escaping (_ facts: [String]) -> (), error: @escaping (Error) -> ()) {
        self.get("/fact-names") {
            (err, json: [String]?) in
            
            if let theError = err {
                error(theError)
                return
            }
            
            done(json!)
        }
    }
    
}
