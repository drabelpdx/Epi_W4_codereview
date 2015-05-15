require('spec_helper')

describe('the add venue path', {:type => :feature}) do
  it('adds a venue') do
    visit('/venues')
    fill_in('name', :with => 'The Sprocket')
    click_button('Add Venue')
    expect(page).to have_content('The Sprocket')
  end
end

describe('the venue page', {:type => :feature}) do
  it('goes to a venue page') do
    visit('/venues/6')
    expect(page).to have_content('The Sprocket')
  end
end
