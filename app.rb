require_relative 'config/environment'

class App < Sinatra::Base

  def initialize
    piglatinize
    piglatinizeword
  end

  get '/' do
    erb :user_input
  end

  post '/PigLatinizer' do
    

    erb :results
  end
end
