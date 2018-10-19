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


# pet = {
#   name: "Sir Percy",
#   pet_type: :cat,
#   breed: "British Shorthair",
#   price: 500
# }

def pets_by_breed(pet_shop, pet_breed)
  pets_of_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == pet_breed
        pets_of_breed << pet
    end
  end
  return pets_of_breed
end
