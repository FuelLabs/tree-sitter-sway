import XCTest
import SwiftTreeSitter
import TreeSitterSway

final class TreeSitterSwayTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_sway())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Sway grammar")
    }
}
