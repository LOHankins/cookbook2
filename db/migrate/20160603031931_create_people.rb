class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :fname
      t.text :mname
      t.text :lname
      t.text :email
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
