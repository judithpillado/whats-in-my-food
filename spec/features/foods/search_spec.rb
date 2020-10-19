require 'rails_helper'

RSpec.describe 'Food Search Page' do

  it 'displays a list of food items that contain certain ingredient', :vcr do
    visit '/'
    fill_in "Ingredient Search", with: "sweet potatoes"
    click_on 'Ingredient Search'
    expect(current_path).to eq(foods_path)
    expect(page).to have_content('10 Results')
    expect(page).to have_css(".food", count: 10)

    within(first(".food")) do
      expect(page).to have_css(".code")
      code = find(".code").text
      expect(code).to_not be_empty

      expect(page).to have_css(".description")
      description = find(".description").text
      expect(description).to_not be_empty

      expect(page).to have_css(".owner")
      owner = find(".owner").text
      expect(owner).to_not be_empty

      expect(page).to have_css(".ingredients")
      ingredients = find(".ingredients").text
      expect(ingredients).to_not be_empty
    end
  end
end
