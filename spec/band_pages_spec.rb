 require('spec_helper')

describe('the add band path', {:type => :feature}) do
  it('adds a band') do
    visit('/bands')
    fill_in('name', :with => 'Pasta Salad')
    click_button('Add Band')
    expect(page).to have_content('Pasta Salad')
  end
end
