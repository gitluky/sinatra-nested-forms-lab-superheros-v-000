require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :index
    end

    # post '/team' do
    #   @team = Team.new(params)
    #   erb :team
    # end

    post '/team' do
      @team = Team.create(name: params[:team][:name], motto: params[:team][:motto])
      params[:team][:heroes].each do |hero_data|
        new_hero = Hero.create(hero_data)
        Hero.team_id = @team.id
      end
      @heroes = Hero.all
      erb :team
    end


end
