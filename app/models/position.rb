class Position < ApplicationRecord

 has_many :position_criterium_scores
    validates :name, presence: true
end
