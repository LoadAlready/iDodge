require 'rest-client'
require 'json'
require 'pry'
require 'nokogiri'
# require 'rest-client', '~> 1.8'


class Champion < ApplicationRecord
  has_many :categories, through: :champion_properties
  has_many :properties, through: :champion_properties
  has_many :teams, through: :champion_teams


  def self.get_champ_stats_from_op(name)
    page = Nokogiri::HTML(RestClient.get("http://na.op.gg/champion/#{name}"))
    @op_url = "http://na.op.gg/champion/#{name}"
    @win_percentage = page.css('div.champion-stats-trend-rate')[0].text
    @pick_percentage = page.css('div.champion-stats-trend-rate')[1].text
    @lol_picture_url = page.css('div.champion-stats-header-info__image img').attr('src').to_str[2..-1]
  end

  def self.get_champ_info_from_lol
    page = Nokogiri::HTML(RestClient.get("https://na1.api.riotgames.com/lol/static-data/v3/champions?locale=en_US&dataById=false&api_key=RGAPI-31eb5513-f9b9-469e-b6fe-3ebea5e00969"))
    champion_hash = JSON.parse(page)
      champion_hash.each do |key, value|
        value.each do |k, v|
          # if v[:key] = "MonkeyKing"
          #   v[:key] = "Wukong"
          get_champ_stats_from_op(v['key'])
          ax = Champion.create(name: "#{v['name']}", lol_id: "#{v['id']}", lol_title: "#{v['title']}", lol_namekey: "#{v['key']}", op_url: "#{@op_url}", lol_picture_url: "#{@lol_picture_url}", win_percentage: "#{@win_percentage}", pick_percentage: "#{@pick_percentage}"  )
          # end
        end
      end
  end






end
