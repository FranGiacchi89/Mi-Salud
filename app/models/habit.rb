class Habit < ApplicationRecord
  belongs_to :user
  validates :habit_type, :quantity, :frequency, presence: true
  enum :frequency, {
    diario: 1,
    semanal: 2,
    mensual: 3
  }
end
