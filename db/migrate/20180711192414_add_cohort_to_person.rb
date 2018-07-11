class AddCohortToPerson < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :cohort, foreign_key: true
  end
end
