import Foundation

public struct NodeMetaData {

    public let catalogEnvironment : String?
    
    public let catalogTimestamp : String?
    
    public let certname : String
    
    public let deactivated: String?
    
    public let factsEnvironment: String?
    
    public let factsTimestamp: String?
    
    public let reportEnvironment: String?
    
    public let reportTimestamp: String?
    
    public init(dictionary: [String: AnyObject]) {
        self.catalogEnvironment = dictionary["catalog-environment"] as? String
        self.catalogTimestamp = dictionary["catalog-timestamp"] as? String
        self.certname = dictionary["certname"] as! String
        self.deactivated = dictionary["deactivated"] as? String
        self.factsEnvironment = dictionary["facts-environment"] as? String
        self.factsTimestamp = dictionary["facts-timestamp"] as? String
        self.reportEnvironment = dictionary["report-environment"] as? String
        self.reportTimestamp = dictionary["report-timestamp"] as? String
    }

}
