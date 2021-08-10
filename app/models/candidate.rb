class Candidate < ApplicationRecord
  scope :rejected, -> { where(status: 0) }
  scope :reviewed, -> { where(status: 1) }
    scope :accepted, -> { where(status: 2) }

  has_one_attached :avatar

  belongs_to :vacancy
  belongs_to :user
  has_many :candidate_criterium_scores

  # enum status: {
  #   Отклонён: 0,
  #   Рассматривается: 1,
  #   Принят: 2
  # }

  enum gender: {
    male: true,
    female: false
  }

  validates :status, inclusion: { in: 0..2 ,
               message: "(%{value}) can't be less 0 and more 2" }
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :email, presence: true
  validates :number, presence: true

    validates :number, uniqueness: true


end
