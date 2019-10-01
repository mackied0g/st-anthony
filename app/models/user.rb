class User < ApplicationRecord
    has_many :losts
    has_many :location, through: :losts
end
