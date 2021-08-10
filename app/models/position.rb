class Position < ApplicationRecord

 has_many :position_criterium_scores, dependent: :delete_all
    validates :name, presence: true

end
