class CreateProductTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_types do |t|
      t.references :product, index: true, foreign_key: true
<<<<<<< HEAD
      t.references :type_flowers, index: true, foreign_key: true
=======
      t.references :type, index: true, foreign_key: true
>>>>>>> c17134a1bafd49fa1bcaf6a80183e3edb95e5346

      t.timestamps
    end
  end
end
