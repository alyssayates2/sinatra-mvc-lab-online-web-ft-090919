require_relative 'config/environment'

class App < Sinatra::Base

  def initialize
    piglatinize
    piglatinizeword
  end

  get '/' do
    erb :user_input
  end

  post '/PigLatinize' do
    @PigLatinizer = PigLatinizer.new(params[:user_text])

    erb :results
  end
end
