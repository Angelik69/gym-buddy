class Gym < ApplicationRecord
  has_many :events

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :address, presence: true
end
