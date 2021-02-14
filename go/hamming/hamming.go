package hamming

import "errors"

// Distance func
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return -1, errors.New("inputs must have the same length")
	}

	d := 0
	for i := range a {
		if a[i] != b[i] {
			d++
		}
	}
	return d, nil
}
