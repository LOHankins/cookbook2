class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :login
      t.text :password

      t.timestamps null: false
    end
  end
end
