def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash_amount)
  pet_shop[:admin][:total_cash] += cash_amount
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_pets_sold)
  pet_shop[:admin][:pets_sold] += number_pets_sold
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, pet_breed)
  pets_of_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == pet_breed
        pets_of_breed << pet
    end
  end
  return pets_of_breed
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

# def remove_pet_by_name(pet_shop, name)
#   for pet in pet_shop[:pets]
#     if pet[:name] == name
#         pet_shop.delete(pet)
#         p pet_shop
#     end
#   end
# end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets]<<new_pet
end

def customer_cash(customer)
  return customer[:cash]
end
