class Job < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_upper_bound, presence: true
  validates :contact_email, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0}
  has_many :resumes

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end


scope :published, -> { where(is_hidden: false)}
scope :recent, -> { order('updated_at DESC') }

end
