class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :slack
      t.string :classification
      t.date :birthday
      t.boolean :has_account?
      t.string :password_digest
      

      t.timestamps
    end
  end
end
