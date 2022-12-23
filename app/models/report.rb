class Report < ApplicationRecord
  belongs_to :user
  validates :title, :date, :category, presence: true
end
