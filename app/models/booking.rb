class Booking < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  belongs_to :party_animal

  validates :start_time, :end_time, presence: true
end
