class CreateDetailBills < ActiveRecord::Migration[5.1]
  def change
    create_table :detail_bills do |t|
<<<<<<< HEAD
      t.integer :count
=======
      t.integer :amout
>>>>>>> c17134a1bafd49fa1bcaf6a80183e3edb95e5346
      t.integer :price
      t.references :bill, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps
    end
  end
end
