class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
<<<<<<< HEAD
      t.boolean :status, default: false
=======
      t.boolean :status
>>>>>>> c17134a1bafd49fa1bcaf6a80183e3edb95e5346
      t.references :product, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
