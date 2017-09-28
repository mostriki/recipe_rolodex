require('spec_helper')

describe 'The ingredient creation path', {:type => :feature} do
  it 'lets the administrator create igredient for recipe' do
    test_recipe = Recipe.new({title: "Dawson's Famous Curry", id: nil})
    test_recipe.save
    id = test_recipe.id
    visit "/ingredients/#{id}"
    fill_in('name', :with => "Onions")
    click_button('Add Ingredient')
    expect(page).to have_content("Onions")
  end
end
