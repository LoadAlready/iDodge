class ChampionProperty < ApplicationRecord
  belongs_to :property
  belongs_to :category
  belongs_to :champions
end
