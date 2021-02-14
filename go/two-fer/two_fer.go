package twofer

import "fmt"

// ShareWith func
func ShareWith(name string) string {
	if name == "" {
		name = "you"
	}
	return fmt.Sprint("One for ", name, ", one for me.")
}
