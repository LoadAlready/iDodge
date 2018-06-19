class Team < ApplicationRecord
  has_many :users
  has_many :champions, through: :champion_teams
end
