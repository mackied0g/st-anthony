class Lost < ApplicationRecord
    belongs_to :user
    has_many :founds
    has_many :locations, through: :founds
end
