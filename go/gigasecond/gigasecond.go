package gigasecond

import "time"

// AddGigasecond func
func AddGigasecond(t time.Time) time.Time {
	return t.Add(1e9 * time.Second)
}
