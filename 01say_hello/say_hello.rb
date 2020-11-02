# Ask the user to input his name and store it in a variable

# If the user enters some text like "Monica", print "Hello Monica! Welcome to the Ruby module."
# If the user enters nothing, print "No one to say hello to. :cry:"

puts "Hi mate!, What's your name?"
name = gets.chomp

if name.empty?
  puts "No one to say hello to. :cry:"
else
  puts "Hello #{name}! Welcome to the Ruby module."
end
