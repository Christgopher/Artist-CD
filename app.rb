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
  erb(:successArtist)
end

get('/artists/:id') do
  @artist = Artist.find(params.fetch('id').to_i())
  erb(:artist)
end

get('/CDs/new') do
  erb(:CDs_form)
end

get('/CDs') do
  @CDs = CD.all()
  erb(:CDs)
end

post('/CDs') do
  name = params.fetch('name')
  CD.new(name).save()
  @CDs = CD.all()
  erb(:successCD)
end
