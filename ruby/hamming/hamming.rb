=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(a, b)
    raise ArgumentError if a.length != b.length

    (0..a.length-1).map{|i| a[i] == b[i] ? 0 : 1}.sum
  end
end