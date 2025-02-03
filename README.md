# tree-sitter-sway

[![Build/test](https://github.com/FuelLabs/tree-sitter-sway/actions/workflows/ci.yml/badge.svg)](https://github.com/FuelLabs/tree-sitter-sway/actions/workflows/ci.yml)

Sway grammar for [tree-sitter](https://github.com/tree-sitter/tree-sitter)

## References

* [The Sway Book](https://fuellabs.github.io/sway) - The Sway book describes the language in detail with examples.

## Contributing

Sway language is under active development with new features added all the time. We want to keep this grammar as up to date as possible and contributions are very much appreciated.

If you find a bug or missing feature, please open an issue or send a pull request including the following.

- example Sway code demonstrating the bug
- the current output of `tree-sitter parse`
- (Optional) the expected output of `tree-sitter parse`

Pull requests will be tested against files in the `corpus` directory as well as sway files from the https://github.com/FuelLabs/sway. PRs should include a new test case in the `corpus` directory for every grammar rule change.
