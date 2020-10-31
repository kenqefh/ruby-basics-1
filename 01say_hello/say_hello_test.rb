$LOAD_PATH.unshift("./01say_hello")

require_relative "../lib/io_test_helpers"
require "minitest/autorun"

class SayHelloTest < Minitest::Test
  include IoTestHelpers

  def test_say_hello_when_user_enter_name
    output, _error = capture_io do
      simulate_stdin("Diego") { load "say_hello.rb" }
    end

    assert_equal  "Hello Diego! Welcome to the Ruby module.",
                  output.lines.last.chomp,
                  "User inputs: 'Diego'"
  end

  def test_response_with_sad_message_when_input_is_empty
    output, _error = capture_io do
      simulate_stdin("") { load "say_hello.rb" }
    end

    assert_equal  "No one to say hello to. :cry:",
                  output.lines.last.chomp
  end
end
