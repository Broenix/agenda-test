class GamesController < ApplicationController
  require 'httparty'

  def index
    response = HTTParty.get('https://api.twitch.tv/helix/games/top', headers: {
      "u8mhg8u181nax39uf2k9sj5ttv7k6b" => ENV['TWITCH_CLIENT_ID']
    })
    if response.code == 200
      @games = JSON.parse(response.body)['data']
    else
      puts "Erreur lors de l'appel API"
    end
  end
end
