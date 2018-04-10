class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
<<<<<<< HEAD
      t.string :title
      t.text :content
      t.string :img
=======
      t.text :title
      t.text :content
      t.text :img
>>>>>>> c17134a1bafd49fa1bcaf6a80183e3edb95e5346
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
