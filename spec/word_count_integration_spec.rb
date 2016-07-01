require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('index page count of given word occurence', {:type => :feature}) do
  it('processes the user entry and returns the number of times a give string appears') do
    visit('/')
    fill_in('string_name', :with => "BusMan")
    fill_in('entry_string', :with => "I will be late for the late bus later.")
    fill_in('string_find', :with => 'late')
    click_button('Submit String')
    expect(page).to have_content("Number of occurences of 'late' in the string Bus Catcher: 2")
  end
end
