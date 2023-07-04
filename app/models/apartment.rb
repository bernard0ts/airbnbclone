class Apartment < ApplicationRecord
    validates :title, :description, :images, :active_date, :inactive_date, presence: true
    has_many_attached :images
end
