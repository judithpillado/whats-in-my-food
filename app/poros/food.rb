class Food
  attr_reader :code, :description, :owner, :ingredients
  def initialize(attributes)
    @code = attributes[:gtinUpc]
    @description = attributes[:description]
    @owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
