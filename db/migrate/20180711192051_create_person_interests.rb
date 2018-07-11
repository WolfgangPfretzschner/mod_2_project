class CreatePersonInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :person_interests do |t|
      t.references :person, foreign_key: true
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end
