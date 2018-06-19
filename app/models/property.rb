class Property < ApplicationRecord
  has_many :champions, through: :champion_properties
end
