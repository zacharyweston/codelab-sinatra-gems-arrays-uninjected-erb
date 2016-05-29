require 'sinatra'

require 'cheapshark'

class CheapSharkApp < Sinatra::Base
  get '/' do
    @games = CheapShark.games(title: params['gameSearch'] || ' ')
    erb :index
  end

end
