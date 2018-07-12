class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name, :default => ''
      t.string :email, :default => ''
      t.string :slack, :default => ''
      t.string :classification, :default => ''
      t.date :birthday, :default => 2020-02-02
      t.boolean :has_account?
      t.string :password_digest, :default => ''


      t.timestamps
    end
  end
end
