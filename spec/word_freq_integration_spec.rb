require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word frequency path', {:type => :feature}) do
  it('processes the user string and returns the number of times that string appears') do
    visit('/')
    fill_in("input_string", :with => 'the cat in the hat')
    fill_in('find', :with => 'the')
    click_button('Click Here')
    expect(page).to have_content('It appears: 2 times.')
  end
end
