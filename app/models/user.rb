class User < ApplicationRecord
    has_many :lost_items
    has_many :founds, through: :lost_items
end
