public class AllNodesResponse {
    
    public let nodes: [NodeMetaData]
    
    init(dictionary: [[String: AnyObject]]) {
        self.nodes = dictionary.map({ (input: [String : AnyObject]) -> NodeMetaData in
            return NodeMetaData(dictionary: input)
        })
    }
    
}
