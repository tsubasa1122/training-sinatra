require 'sinatra'

class App < Sinatra::Base
  # set :bind, '0.0.0.0'
  get '/' do
    'Hello world!'
  end
end