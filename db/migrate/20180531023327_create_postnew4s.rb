class CreatePostnew4s < ActiveRecord::Migration
  def change
    create_table :postnew4s do |t|
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
