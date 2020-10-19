require "rails_helper"

RSpec.describe Food do
  it "exists" do
    attr = {
      code: '1234',
      description: 'SWEET POTATOES',
      owner: 'Cool123',
      ingredients: 'Potatoes'
    }

    food = Food.new(attr)

    expect(food).to be_a(Food)
    expect(food.code).to eq('1234')
    expect(food.description).to eq('SWEET POTATOES')
    expect(food.owner).to eq('Cool123')
    expect(food.ingredients).to eq('Potatoes')
  end
end
