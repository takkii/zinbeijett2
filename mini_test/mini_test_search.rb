require 'minitest/autorun'

class Search < Minitest::Test
  def test_search
    assert_equal "abc".match(/^a/), "abc".match(/^a/)
  end
end

