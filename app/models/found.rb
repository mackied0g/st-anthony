class Found < ApplicationRecord
    belongs_to :location
    belongs_to :lost_item
end
