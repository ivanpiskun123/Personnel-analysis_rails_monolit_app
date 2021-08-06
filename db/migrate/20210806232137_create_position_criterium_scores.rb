class CreatePositionCriteriumScores < ActiveRecord::Migration[6.1]
  def change
    create_table :position_criterium_scores do |t|

      t.integer :score, null: false, default: 0

           t.belongs_to :criteria
           t.belongs_to :position

           t.timestamps
    end
  end
end
