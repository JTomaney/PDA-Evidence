require("minitest/autorun")
require("minitest/rg")

require_relative("./card.rb")
require_relative("./card_game.rb")

class CardGameTest < MiniTest::Test

  def setup()
    @card1 = Card.new('spades', 5)
    @card2 = Card.new('hearts', 1)
    @card3 = Card.new('clubs', 10)
    @cards = [@card1, @card2, @card3]
    @game = CardGame.new()
  end

  def test_can_check_for_ace__is_ace
    result = @game.check_for_ace(@card2)
    assert_equal(true, result)
  end

  def test_can_check_for_ace__is_not_ace
    result = @game.check_for_ace(@card1)
    assert_equal(false, result)
  end

  def test_can_find_highest_card
    result = @game.highest_card(@card1, @card3)
    assert_equal(@card3, result)
  end

  def test_can_calculate_total_value_of_cards
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 16", result)
  end

end
# require("minitest/autorun")
# require("minitest/rg")

# require_relative("../guest.rb")
# require_relative("../song.rb")

# class GuestTest < MiniTest::Test
#
#   def setup
#     @guest0 = Guest.new("Jon", 75, "It's Getting Boring by the Sea")
#     song0 = Song.new("Let the Day begin")
#     song1 = Song.new("It's Getting Boring by the Sea")
#     @playlist = [song0, song1]
#   end
#
#   def test_guest_has_name
#     assert_equal("Jon", @guest0.name)
#   end
#
#   def test_guest_has_money
#     assert_equal(75, @guest0.wallet)
#   end
#
#   def test_guest_has_favourite_song
#     assert_equal("It's Getting Boring by the Sea", @guest0.favourite_song)
#   end
#
#   def test_guest_can_spend_money
#     @guest0.spend_money(15)
#     assert_equal(60, @guest0.wallet)
#   end
#
#   def test_guest_can_cheer
#     assert_equal("Yeah!", @guest0.cheer)
#   end
#
# end
