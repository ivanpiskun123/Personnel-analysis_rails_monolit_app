class Candidate < ApplicationRecord

  belongs_to :vacancy
  belongs_to :status

   has_many :candidate_criterium_scores

end
