class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
    t.integer :user_id, :recipe_id, null: false
      t.timestamps
    end
  end
end
