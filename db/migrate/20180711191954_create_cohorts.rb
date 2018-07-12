class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name, :default => ''
      t.string :current_module, :default => ''
      t.date :start_date, :default => ''
      t.date :end_date, :default => ''

      t.timestamps
    end
  end
end
