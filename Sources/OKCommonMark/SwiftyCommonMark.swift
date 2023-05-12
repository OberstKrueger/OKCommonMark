import Foundation
import cmark

public extension String {
    func markdownToHTML(_ options: CommonmarkOptions...) -> String? {
        let reduced: Int32 = options.reduce(0, {$0 + (1 << $1.rawValue)})
        var result: String?

        self.withCString { pointer in
            if let processed = cmark_markdown_to_html(pointer, strlen(pointer), reduced) {
                result = String(cString: processed)
                free(processed)
            }
        }
        
        return result
    }
}
