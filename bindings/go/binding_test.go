package tree_sitter_sway_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_sway "github.com/fuellabs/tree-sitter-sway/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_sway.Language())
	if language == nil {
		t.Errorf("Error loading Sway grammar")
	}
}
