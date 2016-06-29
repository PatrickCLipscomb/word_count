require('sinatra')
require('sinatra/reloader')
require('./lib/rck_ppr_scrs.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  @player_1 = params.fetch('player_1')
  @player_2 = params.fetch('player_2')
  @rck_ppr_scrs = @player_1.beats?(@player_2)
  erb(:output)
end
