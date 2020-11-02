# Prompt the user for they weight and store the answer in a variable

# Prompt the user for they height and store the answer in a variable

# Calculate the BMI and print the message with the result

# If the result is less than 18.5 print "You are underweight, add more potato to the broth."

puts "How much do you weigh?"
weight = gets.chomp.to_i

puts "How tall are you?"
height = gets.chomp.to_f

BMI = (weight / (height**2)).round(2)

puts "Right now your BMI is #{BMI}"

if BMI < 18.5
  puts "You are underweight, add more potato to the broth"
elsif BMI >= 18.5 && BMI < 25
  puts "You have a normal weight, I have healthy envy of you"
else
  puts "You are overweight, I know, the pandemic has affected us all"
end
