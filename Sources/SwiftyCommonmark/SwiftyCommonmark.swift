import Foundation
import cmark

public extension String {
    func markdownToHTML(options: [CommonmarkOptions] = []) -> String? {
        let reduced: Int32 = options.reduce(0, {$0 + (1 << $1.rawValue)})

        if let processed = cmark_markdown_to_html(self, strlen(self), reduced) {
            return String(cString: processed)
        } else {
            return nil
        }
    }
}
