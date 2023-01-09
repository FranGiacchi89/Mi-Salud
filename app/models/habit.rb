class Habit < ApplicationRecord
  belongs_to :user
  validates :habit_type, :quantity, :frequency, presence: true
end
