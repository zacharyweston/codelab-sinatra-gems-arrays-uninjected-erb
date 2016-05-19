require 'sinatra'
require 'cheapshark'

class CheapSharkApp < Sinatra::Base
  get '/' do
    @gameResults = cheapshark.get
    erb :index
  end

end
