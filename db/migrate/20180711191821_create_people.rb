class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :slack
      t.string :classification
      t.date :birthday
      t.boolean :has_account?, :default => false
      t.string :password_digest, :default => nil


      t.timestamps
    end
  end
end
