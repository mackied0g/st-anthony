class User < ApplicationRecord
    has_many :lost_items
    has_many :location, through: :lost_items
end
