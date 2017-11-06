gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/hash_with_indifferent_access'

class HashTest < Minitest::Test
  def test_hash_can_be_accessed_by_string_or_symbol
    h = HashWithIndifferentAccess.new
    h[:a] = 'spiderman'

    assert_equal 'spiderman', h[:a]
    assert_equal 'spiderman', h['a']
  end
end
