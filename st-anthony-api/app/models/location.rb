class Location < ApplicationRecord
    has_many :founds
    has_many :losts, through: :founds
end
