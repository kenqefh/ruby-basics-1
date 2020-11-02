# This and the next exercise won't have useful comments to guide you.
# Start by thinking in pseudocode which steps you need to do to solve the proble.
# Then, start writing beatuful ruby code! Go for it!

puts "Welcome to Mario Pyramid"

puts "Pyramid height:"
height = gets.chomp.to_i

# If value is invalid, change for five
height = 5 if height.zero?

# For store our result
result = String.new(" " * height)

# To update and show it
1.upto(height) do |x|
  result[-x] = "#"
  puts result
end
