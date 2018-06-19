class Champion < ApplicationRecord
  has_many :categories, through: :champion_properties
  has_many :properties, through: :champion_properties
  has_many :teams, through: :champion_teams
end
