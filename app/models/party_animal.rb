class PartyAnimal < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :main_interest, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  has_one_attached :avatar
end
