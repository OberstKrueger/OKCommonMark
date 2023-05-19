/// Available options for HTML rendering of Markdown.
public enum CommonmarkOptions: Int32 {
    /// Appends data-sourcepos attributes for all block elements.
    case sourcePosition = 1

    /// Replaces soft breaks with hard breaks.
    case hardBreaks     = 2

    /// Replaces soft breaks with spaces.
    case noBreaks       = 4

    /// Checks for valid UTF8 within the String. Any illegal sequences will be replaed with U+FFFD.
    case validateUTF8   = 9

    /// Converts quotation marks to curly quotation marks, -- to an en dash, and --- to an em dash.
    case smart          = 10

    /// Renders raw HTML and all types of links (data:, file:, javascript:, etc.). Without this option, all raw HTML
    /// contained in the String is removed from the resulting output.
    case unsafe         = 17
}
