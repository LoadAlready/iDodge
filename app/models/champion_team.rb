class ChampionTeam < ApplicationRecord
  belongs_to :champion
  belongs_to :team
  has_many :users, through: :teams

  accepts_nested_attributes_for :users

  

end
