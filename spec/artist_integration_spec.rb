require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the artist website path', :type => :feature) do
  it('adds an artist to the list') do
    visit('/')
    click_link('Add New Artist')
    fill_in('name', :with => 'Black Sabbath')
    click_button('Add Artist')
    click_link('See Artist List')
    expect(page).to have_content('Black Sabbath')
  end

    it('adds a CD to the list') do
      visit('/')
      click_link('Add New CD')
      fill_in('name', :with => 'Paranoid')
      click_button('Add CD')
      click_link('See CD List')
      expect(page).to have_content('Paranoid')
    end
end
