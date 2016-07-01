require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

# describe('the project path', {:type => :feature}) do
#   it('processes the user entry and returns the number of times a give string appears') do
#     visit ('/')
#     fill_in("entry_string", :with => 'I will be late for the late bus later.')
#     click_button('Submit String')
#     expect(page).to have_content(2)
#   end
end
