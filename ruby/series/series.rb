=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(s)
    @series = s
  end

  def slices(n)
    raise ArgumentError if n > @series.length
    
    (0..@series.length - n).map { |i| @series.slice(i, n) }
  end
end