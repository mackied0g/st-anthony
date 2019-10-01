class LostItem < ApplicationRecord
    belongs_to :user
    belongs_to :found
    has_many :locations, through: :found
end
