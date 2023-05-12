import XCTest
@testable import OKCommonMark

final class OKCommonMarkTests: XCTestCase {
    func testSpec() {
        let  tests: [(title: String, options: CommonmarkOptions?)] = [
            ("HardBreaks", .hardBreaks),
            ("NoBreaks", .noBreaks),
            ("Safe", nil),
            ("Safe", .safe),
            ("Safe", .validateUTF8), // The spec already contains entirely valid UTF8
            ("Smart", .smart),
            ("SourcePos", .sourcePosition),
            ("Unsafe", .unsafe),
        ]

        let inputSpec = Bundle.module.url(forResource: "spec", withExtension: "md")!
        let dataSpec = try! Data(contentsOf: inputSpec)
        let outputSpec = String(decoding: dataSpec, as: UTF8.self)

        for test in tests {
            let input = Bundle.module.url(forResource: "spec\(test.title)", withExtension: "html")!
            let data = try! Data(contentsOf: input)
            let output = String(decoding: data, as: UTF8.self)

            XCTAssertEqual(outputSpec.markdownToHTML(test.options ?? .safe), output)
        }
    }
}
