me = {
  first_name: "Jon",
  last_name: "Tomaney",
  age: 27
}

def check_age(hash)
  result = hash[:age]
  return result
end

p check_age(me)
