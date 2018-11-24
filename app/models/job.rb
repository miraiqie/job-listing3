class Job < ApplicationRecord
  validates :title, presence: true
  valifates :description, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_upper_bound, presence: true
  validates :contact_email, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0}
end
