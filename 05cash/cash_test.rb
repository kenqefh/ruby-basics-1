$LOAD_PATH.unshift("./05cash")

require_relative "../lib/io_test_helpers"
require "minitest/autorun"

class CashTest < Minitest::Test
  include IoTestHelpers

  def test_7_coins_needed_for_5_30_soles
    output, _error = capture_io do
      simulate_stdin("5.30") { load "cash.rb" }
    end

    assert_equal "7", output.chomp[-1], "Change owned: 5.30"
  end

  def test_12_coins_needed_for_10_70_soles
    output, _error = capture_io do
      simulate_stdin("10.7") { load "cash.rb" }
    end

    assert_equal "12", output.chomp[-2..], "Change owned: 10.7"
  end

  def test_5_coins_needed_for_3_33_soles_rounded_to_3_3
    output, _error = capture_io do
      simulate_stdin("3.33") { load "cash.rb" }
    end

    assert_equal "5", output.chomp[-1], "Change owned: 3.33"
  end

  def test_7_coins_needed_for_4_77_soles_rounded_to_4_8
    output, _error = capture_io do
      simulate_stdin("4.77") { load "cash.rb" }
    end

    assert_equal "7", output.chomp[-1], "Change owned: 4.77"
  end

  def test_prompt_again_when_invalid_input
    inputs = %w[0 -2 -0.3 foo bar nothing? fine 8]

    output, _error = capture_io do
      simulate_stdin(*inputs) { load "cash.rb" }
    end

    assert_equal "8", output.chomp[-1], "Change owned: 8"
  end
end
