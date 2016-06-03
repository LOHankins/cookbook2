class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.text :comment
      t.float :rating
      t.boolean :used
      t.boolean :favorite
      t.text :story
      t.references :person, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
