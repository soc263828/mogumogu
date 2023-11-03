class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
     t.integer :user_id, :genre_id, null: false
     t.text "comment"
     t.string "title"
      t.timestamps
    end
  end
end
