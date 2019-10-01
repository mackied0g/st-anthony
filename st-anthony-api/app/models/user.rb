class User < ApplicationRecord
    has_many :losts
    # has_many :locations, through: :losts
end
