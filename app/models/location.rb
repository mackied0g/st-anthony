class Location < ApplicationRecord
    has_many :founds
    has_many :lost_items, through: :founds
end
