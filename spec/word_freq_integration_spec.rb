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
    expect(page).to have_content("'the' appears: 2 times.")
  end
  it('processes the user string and returns the number of times that string appears') do
    visit('/')
    fill_in("input_string", :with => 'bacon bits of bacon')
    fill_in('find', :with => 'bacon')
    click_button('Click Here')
    expect(page).to have_content("'bacon' appears: 2 times.")
  end
end
