class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
<<<<<<< HEAD
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :phone
      t.boolean :is_admin, default: false
=======
      t.text :name
      t.text :email
      t.text :password_digest
      t.text :address
      t.text :phone
      t.boolean :is_admin
>>>>>>> c17134a1bafd49fa1bcaf6a80183e3edb95e5346

      t.timestamps
    end
  end
end
