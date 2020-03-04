class Artwork < ApplicationRecord
    has_one_attached :picture
    belongs_to :user
    has_one :purchase_item
end
