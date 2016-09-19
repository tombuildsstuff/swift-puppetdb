public class Configuration {
    
    public let host : String
    public let port : Int
    public let apiVersion : String
    public let useSsl : Bool
    
    public init(host: String, port: Int, apiVersion: String = "v4", useSsl: Bool = false) {
        self.host = host
        self.port = port
        self.apiVersion = apiVersion
        self.useSsl = useSsl
    }
    
    public func buildUrl() -> String {
        let httpProtocol = self.useSsl ? "https" : "http"
        return "\(httpProtocol)://\(host):\(port)/\(apiVersion)"
    }
    
}
