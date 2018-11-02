require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      team = Team.new(params[:team])
      @team_name = team.name
      @team_motto = team.motto

      hero = Hero.new(params[:hero])

      erb :team
    end


end
