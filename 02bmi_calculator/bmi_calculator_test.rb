$LOAD_PATH.unshift("./02bmi_calculator")

require_relative "../lib/io_test_helpers"
require "minitest/autorun"

class BmiCalculatorTest < Minitest::Test
  include IoTestHelpers

  def test_bmi_is_correctly_calculated
    output, _error = capture_io do
      simulate_stdin("85", "1.85") { load "bmi_calculator.rb" }
    end

    assert_equal  output.lines.map(&:chomp)[2],
                  "Right now your BMI is 24.84",
                  "User inputs: weight: 85, height: 1.85"
  end

  def test_reply_with_underweight_message
    output, _error = capture_io do
      simulate_stdin("60", "1.90") { load "bmi_calculator.rb" }
    end

    assert_equal  output.lines.map(&:chomp)[3],
                  "You are underweight, add more potato to the broth",
                  "User inputs: weight: 60, height: 1.90"
  end

  def test_reply_with_normal_weight_message
    output, _error = capture_io do
      simulate_stdin("70", "1.80") { load "bmi_calculator.rb" }
    end

    assert_equal  output.lines.map(&:chomp)[3],
                  "You have a normal weight, I have healthy envy of you",
                  "User inputs: weight: 60, height: 1.90"
  end

  def test_reply_with_overweight_message
    output, _error = capture_io do
      simulate_stdin("90", "1.60") { load "bmi_calculator.rb" }
    end

    assert_equal  output.lines.map(&:chomp)[3],
                  "You are overweight, I know, the pandemic has affected us all",
                  "User inputs: weight: 60, height: 1.90"
  end
end
