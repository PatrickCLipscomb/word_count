require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_freq')
require('pry')

get('/') do
  erb(:index)
end

get('/wordfreq') do
  @find = params.fetch('find')
  @string = params.fetch('input_string')
  @count = @string.word_freq(@find)
  erb(:wordfreq)
end
