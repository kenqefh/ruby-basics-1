# Start printing the welcome message

# In the next line prompt the user for a number and leave the cursor on the same line.
# Save the user input in a variable.

# If the user input is not a number greater than 0, ask again until it is.

# Print the message "The first 20 multiples of <user_number> are:"

# Use some looping technique to print each multiple followed by a comma.
# The last one should be preceded by "and"

puts "My name is Multiplier and I will give you the first 20 multiples of any number"

puts "Choose a number greater than 0:"
user_number = gets.chomp.to_i

# if value is invalid
user_number = 5 if user_number.zero?

# Saving data
result = "#{user_number},"
2.upto(19) { |x| result << " #{x * user_number}," }
result << " and #{20 * user_number}"

# Showing result
puts "The first 20 multiples of #{user_number} are:"
puts result
