### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) #fuction name should be snake case
    if card.value = 1 # should be 2 equals signs '==' for logical operation
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #should be def not dif, missing comma between parameterss
  if card1.value > card2.value
    return card #should be card1
  else
    return card2
  end
end
end #end of class definition too soon

def self.cards_total(cards) # method is not within the class
  total # total needs to be assigned a value
  for card in cards
    total += card.value
    return "You have a total of" + total # can't add string and integer, should return after the for loop
  end
end
```
