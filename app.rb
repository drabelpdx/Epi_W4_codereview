require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get('/') do
  erb(:index)
end

get('/bands') do
@bands = Band.all()
  erb(:bands)
end

post('/bands') do
  name = params.fetch('name')
  Band.create({:name => name})
  @bands = Band.all()
  erb(:bands)
end

get('/venues') do
  @venues = Venue.all()
  erb(:venues)
end

post('/venues') do
  name = params.fetch('name')
  Venue.create({:name => name})
  @venues = Venue.all()
  erb(:venues)
end

get('/bands/:id') do
  @band = Band.find(params.fetch("id"))
  erb(:band)
end
