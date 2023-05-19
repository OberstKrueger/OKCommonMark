import Foundation
import cmark

public extension String {
    /// Converts the String from Markdown to HTML. No verification of whether the Markdown is valid or if the string contains Markdown is performed.
    ///
    /// - Parameters:
    ///     - options: The rendering options for HTML output.
    func markdownToHTML(_ options: CommonmarkOptions...) -> String? {
        let reduced: Int32 = options.reduce(0, {$0 + (1 << $1.rawValue)})
        var result: String?

        self.withCString { pointer in
            if let processed = cmark_markdown_to_html(pointer, strlen(pointer), reduced) {
                result = String(cString: processed)
                processed.deallocate()
            }
        }

        return result
    }
}
