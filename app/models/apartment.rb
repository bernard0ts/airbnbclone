class Apartment < ApplicationRecord
  validates :title, :description, :cover, :active_date, :inactive_date, presence: true
  validates :images, presence: true, length: { minimum: 4, maximum: 4 }
  has_one_attached :cover
  has_many_attached :images

  belongs_to :admin

  before_create :randomize_id

  def formatted_active_date
    active_date.strftime('%d/%m/%Y') if active_date
  end

  def formatted_inactive_date
    inactive_date.strftime('%d/%m/%Y') if inactive_date
  end

  private

  def randomize_id
    begin
      self.id = SecureRandom.random_number(1_000_000_000)
    end while Admin.where(id: self.id).exists?
  end
end
