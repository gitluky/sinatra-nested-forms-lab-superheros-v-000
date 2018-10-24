require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/team' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      erb :team
    end



end
