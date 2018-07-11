class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :current_module
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
