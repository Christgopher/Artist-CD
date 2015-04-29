require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the artist website path', :type => :feature) do
  it('adds an to the list') do
    visit('/')
    click_link('Add New Artist')
    fill_in('name', :with => 'Black Sabbath')
    click_button('Add Artist')
    click_link('See Artist List')
    expect(page).to have_content('Black Sabbath')
  end
end
