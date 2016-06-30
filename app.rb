require('sinatra')
require('sinatra/reloader')
require('./lib/find_replace.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/find_replace_output') do
  @string_replace = params.fetch('string_replace')
  @string_replacement = params.fetch('string_replacement')
  @find_replace = params.fetch('string').find_replace(@string_replace, @string_replacement)
  erb(:find_replace_output)
end
