require('spec_helper')

describe 'The recipe creation path', {:type => :feature} do
  it 'lets the administrator create and view recipes' do
    visit '/'
    fill_in('title', :with => "Dawson's famous curry")
    click_button('Create')
    expect(page).to have_content("Dawson's Famous Curry")
  end
end

# describe 'The recipe destruction path', {:type => :feature} do
#   it 'lets the administrator destroy recipes' do
#     visit '/'
#     fill_in('title', :with => "Dawson's famous curry")
#     click_button('Delete')
#     expect(page).to have_content("You have successfully deleted Dawson's Famous Curry!")
#   end
# end
