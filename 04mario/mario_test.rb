$LOAD_PATH.unshift("./04mario")

require_relative "../lib/io_test_helpers"
require "minitest/autorun"

class MarioTest < Minitest::Test
  include IoTestHelpers

  def test_print_pyramid_of_height_1
    height = 1
    output, _error = capture_io do
      simulate_stdin(height) { load "mario.rb" }
    end

    pyramid = "#\n"

    assert_equal pyramid, output[-(height**2 + height)..]
  end

  def test_print_pyramid_of_height_2
    height = 2
    output, _error = capture_io do
      simulate_stdin(height) { load "mario.rb" }
    end

    pyramid = " #\n##\n"

    assert_equal pyramid, output[-(height**2 + height)..]
  end

  def test_print_pyramid_of_height_4
    height = 4
    output, _error = capture_io do
      simulate_stdin(height) { load "mario.rb" }
    end

    pyramid = "   #\n  ##\n ###\n####\n"

    assert_equal  pyramid, output[-(height**2 + height)..]
  end

  def test_ask_multiple_times_until_get_a_valid_input
    inputs = %w[0 -1 -20 9 20 anything! ok fine 5]
    height = 5
    output, _error = capture_io do
      simulate_stdin(*inputs) { load "mario.rb" }
    end

    pyramid = "    #\n   ##\n  ###\n ####\n#####\n"

    assert_equal pyramid, output[-(height**2 + height)..], "User inputs: #{inputs.join(', ')}"
  end
end
