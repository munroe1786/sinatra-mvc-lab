require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        user_string = params["user_phrase"]
        word = PigLatinizer.new
        @pig_latinized_word = word.piglatinize(user_string)
        erb :pig_latin
    end 
end