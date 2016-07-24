#function pet_shop_name,passing a hash through as argument and return value in :name
require('pry-byebug')

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

# #I am calling a hash as argument shop, and returning the value of :total_cash
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end
# here I will pass a hash into add_or_remove_cash function with an opertion


# def total_cash(pet_shop)
#   return shop
# end
# here this function
def admin(pet_shop)
    pet_shop[:admin]
end

def add_or_remove_cash(pet_shop, value)
    admin(pet_shop)[:total_cash] += value
end

#function takes pet_shop to find value in the hash and add new value, changing the original value.

def pets_sold(pet_shop)
    admin(pet_shop)[:pets_sold] 
end

def increase_pets_sold(pet_shop, value)
    admin(pet_shop)[:pets_sold] += value
end
#here I created a function, passed the pet shop hash, used .count on the array of values :pets is assigned to.

def stock_count(pet_shop)
    return pet_shop[:pets].count
end

#need a new empty array, matches, make a variable pets, assign it to the pets array. open for loop, grap each element in pets array, as pet, shovel element pet into matches if breed(argument). 
def pets_by_breed(pet_shop, breed)
    matches = []
    pets = pet_shop[:pets] 
    for pet in pets
      matches << pet if breed == pet[:breed]
    end
    return matches
end 
#Here I pass an a hash into the function and a name. The loop checks each pet in the array. If it finds our name, it returns name var assigned to the name. If it does not do that, it returns name as nil.

def find_pet_by_name(pet_shop, name)
      pets = pet_shop[:pets] 
      for pet in pets
        if pet[:name] == name
        return name 
        end
      end
      name = nil
end    

# def pets(pet_shop)
#     pet_shop[:pets]
# end

# #here I would like to remove an name from the hash that is within the array. I must loop through the pets array to find a hash with [:name] of name passed through.if they match I must remove that value

def remove_pet_by_name(pet_shop, name)
    pets = pet_shop[:pets] 
    for pet in pets
      if pet[:name] == name
        return pet.delete(:name)
      end 
    end
end

# # #here I am passing pet_shop hash and using .push because its an array adding the new information which is a hash into the array.
def add_pet_to_stock(pet_shop, new_pet)
    return pet_shop[:pets].push(new_pet)
end  

# # #this function takes customer which is a hash checks the key [:pets] to check if it is equal to an empty array, if that condition is true then the function should return zero
def customer_pet_count(customer)
    if customer[:pets] == []
    return 0
    elsif customer[:pets] != 0
      return [:pets].count
    end
end

# # this line adds new_pet which is a hash into customer which is an array
def add_pet_to_customer(customer, pet)
    return customer[:pets] << pet
end

# #here I must check what the value of customer cash is in the customers array against what the cost of new pet is in the new_pet hash. If cash is more than what the price of new pet is I can return true otherwise I must return false.
def customer_can_afford_pet(customer, pet)
    if customer[:cash] >= pet[:price]
      return true
    else 
      return false
    end
end

# in this function i will pass one hash(pet_shop) another hash(pet) and an array(customer). the pet must be found in pet_shop, deleted from there and added to customer.
# def sell_pet_to_customer(pet_shop, pet, customer)
    
def sell_pet_to_customer(pet_shop, pet, customer)

    if customer_can_afford_pet()
      add_pet_to_customer() 
        remove_pet_by_name()
    end
       
end


