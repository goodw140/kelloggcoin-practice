places = ["store", "cart"]
amounts = {
    "store" => {"apple" => 20, "banana" => 20, "oreos" => 20, "eggs" => 20},
    "cart" => {"apple" => 0, "banana" => 0, "oreos" => 0, "eggs" => 0}
}

grocery_shopping = [
    # {"from" => nil,"to" => "store", "item" => "apple", "quantity" => 20},
    # {"from" => nil,"to" => "store", "item" => "banana", "quantity" => 20},
    # {"from" => nil,"to" => "store", "item" => "oreos", "quantity" => 20},
    # {"from" => nil,"to" => "store", "item" => "eggs", "quantity" => 20},
    {"from" => "store","to" => "cart", "item" => "apple", "quantity" => 5},
    {"from" => "store", "to" => "cart", "item" => "banana", "quantity" => 8},
    {"from" => "store", "to" => "cart", "item" => "oreos", "quantity" => 2},
    {"from" => "store", "to" => "cart", "item" => "eggs", "quantity" => 3},
    {"from" => "cart", "to" => "store", "item" => "oreos", "quantity" => 1}
]



for transaction in grocery_shopping

    # if amounts.key?(transaction["to"])
        amounts[transaction["to"]][transaction["item"]] += transaction["quantity"]
    # end
    # if amounts.key?(transaction["from"])
        amounts[transaction["from"]][transaction["item"]] -= transaction["quantity"]
    # end
end

store_amount = amounts["store"]
cart_amount = amounts["cart"]

store_amount.each do |(key,value)|
    puts "Store has #{value} #{key}(s) in it."
end

cart_amount.each do |(key,value)|
    puts "Cart has #{value} #{key}(s) in it."
end

# puts "#{place.capitalize} currently has #{transaction["quantity"]} #{transaction["item"]}(s) in it."