$LOAD_PATH.unshift("./00hello_world")

require "minitest/autorun"

class HelloWorldTest < Minitest::Test
  def test_say_hello_world
    output, _error = capture_io do
      load "hello_world.rb"
    end

    assert_equal "Hello World!", output.chomp
  end
end
