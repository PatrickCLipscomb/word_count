require('sinatra')
require('sinatra/reloader')
require('./lib/word_count.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count_output') do
  @string_find = params.fetch('string_find')
  @entry_string = params.fetch('entry_string').word_count(@string_find)
  erb(:word_count_output)
end
