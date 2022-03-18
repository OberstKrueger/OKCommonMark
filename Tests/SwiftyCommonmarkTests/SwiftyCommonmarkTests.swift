import XCTest
@testable import SwiftyCommonMark

final class SwiftyCommonMarkTests: XCTestCase {
    func testElements() {

    }

    func testSpec() {
        let inputPath = Bundle.module.url(forResource: "SPEC", withExtension: "md")!

        let inputData = try! Data(contentsOf: inputPath)

        let inputString = String(decoding: inputData, as: UTF8.self)

        print(inputString.markdownToHTML()!)
    }
}
