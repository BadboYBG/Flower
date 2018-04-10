class CreateOccasions < ActiveRecord::Migration[5.1]
  def change
    create_table :occasions do |t|
<<<<<<< HEAD
      t.string :name
=======
      t.text :name
>>>>>>> c17134a1bafd49fa1bcaf6a80183e3edb95e5346

      t.timestamps
    end
  end
end
