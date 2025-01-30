# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

# ChatGPT suggestion to improve - reduce repeating code by using an array to avoid repeating

# p blockchain

users = ["ben", "brian", "evan", "anthony"]
balances = {"ben" => 0, "brian" => 0, "evan" => 0, "anthony" => 0}



# code below is a loop to walk through each transaction
for transaction in blockchain
  for user in users
    if transaction["to_user"] == user
      balances[user] = balances[user] + transaction["amount"]
    elsif transaction["from_user"] == user
      balances[user] = balances[user] - transaction["amount"]
    end
  end

  puts "Transaction from #{transaction["from_user"]} to #{transaction["to_user"]}: #{transaction["amount"]}"

  puts nil
  for user in users
    puts "#{user.capitalize}'s current KelloggCoin Balance is #{balances[user]}"
  end
  puts nil

end


# code below is final balances:
puts nil
puts "After all of the transactions:"
puts nil
for user in users
  puts "#{user.capitalize}'s final KelloggCoin balance is #{balances[user]}"
end
puts nil
puts "Total KelloggCoin in circulation is #{balances.values.sum}"