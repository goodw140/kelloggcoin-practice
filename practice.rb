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

# p blockchain

# code below is to create accounts that can be added to for each of the transactions 
# listed in the blockhain array
ben_balance = 0
brian_balance = 0
evan_balance = 0
anthony_balance = 0



# code below is a loop to walk through each transaction
for transaction in blockchain
  
  if transaction["to_user"] == "ben"
    ben_balance = ben_balance + transaction["amount"]
  elsif transaction["from_user"] == "ben"
    ben_balance = ben_balance - transaction["amount"]
  end
  
  if transaction["to_user"] == "brian"
    brian_balance = brian_balance + transaction["amount"]
  elsif transaction["from_user"] == "brian"
    brian_balance = brian_balance - transaction["amount"]
  end
  
  if transaction["to_user"] == "evan"
    evan_balance = evan_balance + transaction["amount"]
  elsif transaction["from_user"] == "evan"
    evan_balance = evan_balance - transaction["amount"]
  end

  if transaction["to_user"] == "anthony"
    anthony_balance = anthony_balance + transaction["amount"]
  elsif transaction["from_user"] == "anthony"
    anthony_balance = anthony_balance - transaction["amount"]
  end

  puts "Transaction from #{transaction["from_user"]} to #{transaction["to_user"]}: #{transaction["amount"]}"

  puts nil
  puts "Ben's current KelloggCoin balance is #{ben_balance}"
  puts "Brian's current KelloggCoin balance is #{brian_balance}"
  puts "Evan's current KelloggCoin balance is #{evan_balance}"
  puts "Anthony's current KelloggCoin balance is #{anthony_balance}"
  puts nil

end


# code below is final balances:
puts nil
puts "After all of the transactions:"
puts nil
puts "Ben's ending KelloggCoin balance is #{ben_balance}"
puts "Brian's ending KelloggCoin balance is #{brian_balance}"
puts "Evan's ending KelloggCoin balance is #{evan_balance}"
puts "Anthony's ending KelloggCoin balance is #{anthony_balance}"
puts nil
puts "Total KelloggCoin in circulation is #{ben_balance + brian_balance + evan_balance + anthony_balance}"