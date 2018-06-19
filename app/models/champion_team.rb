class ChampionTeam < ApplicationRecord
  belongs_to :champion
  belongs_to :team
end
