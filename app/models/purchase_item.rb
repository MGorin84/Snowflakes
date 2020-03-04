class PurchaseItem < ApplicationRecord
    belongs_to :artwork
    belongs_to :user
    belongs_to :purchase
end
