class Booking < ApplicationRecord
  belongs_to :user
  validates :date, :title, presence: true
end
