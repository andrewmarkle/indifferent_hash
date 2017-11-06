class HashWithIndifferentAccess
  def initialize
    @indifferent_hash = {}
  end

  def [](key)
    indifferent_hash[key.to_s]
  end

  def []=(key, value)
    indifferent_hash[key.to_s] = value
  end

  private

  attr_reader :indifferent_hash
end
