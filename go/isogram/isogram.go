package isogram

import (
	"strings"
	"unicode"
)

// IsIsogram func
func IsIsogram(s string) bool {
	m := make(map[rune]bool)
	for _, c := range strings.ToLower(s) {
		if unicode.IsLetter(c) {
			if m[c] {
				return false
			}
			m[c] = true
		}
	}
	return true
}
