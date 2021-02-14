package raindrops

import "strconv"

var translations = []struct {
	Num  int
	Word string
}{
	{3, "Pling"},
	{5, "Plang"},
	{7, "Plong"},
}

// Convert func
func Convert(num int) string {
	s := ""
	for _, t := range translations {
		if num%t.Num == 0 {
			s += t.Word
		}
	}
	if s == "" {
		return strconv.Itoa(num)
	}
	return s
}
