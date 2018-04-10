class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.integer :total_money
      t.date :date_order
      t.date :date_delivery
<<<<<<< HEAD
      t.boolean :status, default: false
=======
      t.boolean :status
>>>>>>> c17134a1bafd49fa1bcaf6a80183e3edb95e5346
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
