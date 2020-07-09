require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0 
  while i < collection.length do 
    item_name =  collection[i]
    if item_name[:item] == name 
      return item_name
    end
    i+=1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  i = 0 
  new_cart = []
  
  while i < cart.length do 
    item_name = cart[i]
    item_name[:count] = 0
    if 
      find_item_by_name_in_collection(item_name[:item], cart) == item_name[:item]
      item_name[:count] += 1 
      
    #binding.pry
    else 
     item_name[:count] = 0
     new_cart.push(item_name)
      end 
        i += 1 
    #binding.pry
  end

  new_cart

end


  