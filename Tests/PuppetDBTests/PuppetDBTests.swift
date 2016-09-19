import XCTest
@testable import PuppetDB

class PuppetDBTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(PuppetDB().text, "Hello, World!")
    }


    static var allTests : [(String, (PuppetDBTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
