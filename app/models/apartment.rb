class Apartment < ApplicationRecord
    validates :title, :description, :active_date, :inactive_date, presence: true
end
