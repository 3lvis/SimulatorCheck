import UIKit
import XCTest

class Tests: XCTestCase {
    func testSimulator() {
        XCTAssertEqual(SimulatorCheck.isSimulator, true)
    }
}
