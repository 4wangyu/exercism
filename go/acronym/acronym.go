package acronym

import "strings"

// Abbreviate func
func Abbreviate(s string) (out string) {
	s = replaceWithSpace(s, []string{"-", "_"})

	words := strings.Fields(s)

	for i := range words {
		out += string(words[i][0])
	}

	return strings.ToUpper(out)
}

func replaceWithSpace(s string, chars []string) string {
	for i := range chars {
		s = strings.ReplaceAll(s, chars[i], " ")
	}
	return s
}
