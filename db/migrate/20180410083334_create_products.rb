class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
<<<<<<< HEAD
      t.string :name
      t.integer :price
      t.string :img
      t.boolean :many_or_not, default: true
=======
      t.text :name
      t.integer :price
      t.text :img
      t.integer :many_or_not
>>>>>>> c17134a1bafd49fa1bcaf6a80183e3edb95e5346
      t.integer :sale
      t.text :details
      t.integer :view
      t.integer :rating
      t.references :design, index: true, foreign_key: true

      t.timestamps
    end
  end
end
