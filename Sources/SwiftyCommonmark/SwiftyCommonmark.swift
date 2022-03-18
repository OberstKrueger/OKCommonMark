import Foundation
import cmark

public extension String {
    func markdownToHTML() -> String? {
        if let processed = cmark_markdown_to_html(self, strlen(self), 0) {
            return String(cString: processed)
        } else {
            return nil
        }
    }
}
