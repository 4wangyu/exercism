package space

// Planet type
type Planet string

const earthYearSeconds = 31557600

var planets = map[Planet]float64{
	"Earth":   1,
	"Mercury": 0.2408467,
	"Venus":   0.61519726,
	"Mars":    1.8808158,
	"Jupiter": 11.862615,
	"Saturn":  29.447498,
	"Uranus":  84.016846,
	"Neptune": 164.79132,
}

// Age func
func Age(seconds float64, planet Planet) float64 {
	return seconds / (planets[planet] * earthYearSeconds)
}
