$LOAD_PATH.unshift("./03multiplier")

require_relative "../lib/io_test_helpers"
require "minitest/autorun"

class MultiplierTest < Minitest::Test
  include IoTestHelpers

  def test_multiples_of_2
    output, _error = capture_io do
      simulate_stdin("2") { load "multiplier.rb" }
    end

    assert_equal  "2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, and 40",
                  output.lines.last.chomp,
                  "User chose: 2"
  end

  def test_multiples_of_7
    output, _error = capture_io do
      simulate_stdin("7") { load "multiplier.rb" }
    end

    assert_equal  "7, 14, 21, 28, 35, 42, 49, 56, 63, 70, 77, 84, 91, 98, 105, 112, 119, 126, 133, and 140",
                  output.lines.last.chomp,
                  "User chose: 7"
  end

  def test_prints_introduction_message_before_printing_printing_the_multiples
    output, _error = capture_io do
      simulate_stdin("3") { load "multiplier.rb" }
    end

    assert_equal  "The first 20 multiples of 3 are:",
                  output.gsub(/(The first)/, "\nThe first").lines[-2].chomp,
                  "User chose: 3"
  end

  def test_ask_multiple_times_until_get_a_positive_number
    inputs = %w[0 -1 -20 0.5 anything! ok fine 5]
    output, _error = capture_io do
      simulate_stdin(*inputs) { load "multiplier.rb" }
    end

    assert_equal  "5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, and 100",
                  output.lines.last.chomp,
                  "User chose: #{inputs}"
  end
end
