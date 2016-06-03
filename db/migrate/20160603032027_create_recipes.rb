class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :name
      t.text :prep
      t.text :cook
      t.text :description
      t.text :instructions
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
