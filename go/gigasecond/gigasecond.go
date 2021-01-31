// Package gigasecond calculates the time at which someone has lived for a gigasecond.
package gigasecond

import "time"

// AddGigasecond adds 10^9 seconds to the given time.
func AddGigasecond(t time.Time) time.Time {
	return t.Add(1e9 * time.Second)
}
