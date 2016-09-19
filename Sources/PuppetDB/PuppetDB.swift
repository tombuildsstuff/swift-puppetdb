import Foundation

public class PuppetDB {
    
    private let configuration: Configuration
    
    public init(configuration: Configuration) {
        self.configuration = configuration
    }
    
    public func getFactsForNode(nodeName: String) {
        self.get("/nodes/\(nodeName)/facts") {
            (error, json: [[String: AnyObject]]?) in
            print(error)
            print(json)
        }
    }
    
    public func getAllValuesForFact(name: String) {
        self.get("/facts/\(name)") {
            (error, json: [[String: AnyObject]]?) in
            print(error)
            print(json)
        }
    }
    
    // MARK: Private methods
    internal func get<T>(_ endpoint: String, done: @escaping (_ error: Error?, _ json: T?) -> ()) {
        let baseUrl = self.configuration.buildUrl()
        let requestUrl = "\(baseUrl)\(endpoint)"
        var request = URLRequest(url: URL(string: requestUrl)!)
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        let task = session.dataTask(with: request, completionHandler: {(data, response, err) in
            
            if let anError = err {
                done(anError, nil)
                return
            }
            
            let json = try! JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! T
            done(nil, json)
            
        })
        
        task.resume()
    }
    
}
