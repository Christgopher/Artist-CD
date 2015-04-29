require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/CD')
require('./lib/artist')

get('/') do
  erb(:index)
end

get('/artists/new') do
  erb(:artists_form)
end

get('/artists') do
  @artists = Artist.all()
  erb(:artists)
end

post('/artists') do
  name = params.fetch('name')
  Artist.new(name).save()
  @artists = Artist.all()
  erb(:success)
end
