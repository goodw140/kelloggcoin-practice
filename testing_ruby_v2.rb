places = ["store", "cart"]
amounts = {
    "store" => {"apple" => 20, "banana" => 20, "oreos" => 20, "eggs" => 20},
    "cart" => {"apple" => 0, "banana" => 0, "oreos" => 0, "eggs" => 0}
}

grocery_shopping = [
    {"from" => "store","to" => "cart", "item" => "apple", "quantity" => 5},
    {"from" => "store", "to" => "cart", "item" => "banana", "quantity" => 8},
    {"from" => "store", "to" => "cart", "item" => "oreos", "quantity" => 2},
    {"from" => "store", "to" => "cart", "item" => "eggs", "quantity" => 3},
    {"from" => "cart", "to" => "store", "item" => "oreos", "quantity" => 1}
]



grocery_shopping.each do |transaction|
    amounts[transaction["to"]][transaction["item"]] += transaction["quantity"]
    amounts[transaction["from"]][transaction["item"]] -= transaction["quantity"]
end

store_amount = amounts["store"]
cart_amount = amounts["cart"]

amounts.each do |place, items_hash|
    puts "#{place.capitalize} has:"
    items_hash.each do |item, quantity|
        puts " - #{quantity} #{item}(s)"
    end
    puts
end

# OLD code
# store_amount.each do |(key,value)|
#     puts "Store has #{value} #{key}(s) in it."
# end

# cart_amount.each do |(key,value)|
#     puts "Cart has #{value} #{key}(s) in it."
# end
