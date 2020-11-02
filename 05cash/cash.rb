# This exercise won't have useful comments to guide you. Go for it!

puts "How much money do yo have?"
money = gets.chomp.to_f

# Coins : S/. 1.00, S/. 0.50, S/. 0.20, S/. 0.10

# If money doesn't have a valid value
coins = money.zero? ? 8 : money.to_i
money -= coins

# 0.5 coin
if money >= 0.5
  coins += 1
  money -= 0.5
end
money = money.round(1)

# 0.2 or 0.1 coins
if [0.2, 0.1].include? money
  coins += 1
  # 0.3 or 0.4 coins
elsif money >= 0.3
  coins += 2
end

# Print result
puts coins
