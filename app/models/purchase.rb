class Purchase < ApplicationRecord
    belongs_to :user
    has_many :purchase_items
end
