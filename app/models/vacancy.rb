class Vacancy < ApplicationRecord

  scope :opened, -> { where(status: false) }
  scope :closed, -> { where(status: true) }

  belongs_to :position
  has_many :candidates


end
