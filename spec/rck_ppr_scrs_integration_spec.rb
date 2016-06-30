require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the project path', {:type => :feature}) do
  # it('processes the user entry and returns a scrabble score') do
  #   visit ('/')
  #   fill_in("player_1", :with => 'rock')
  #   fill_in("player_2", :with => 'scissors')
  #   click_button('Submit values')
  #   expect(page).to have_content(true)
  # end
end
