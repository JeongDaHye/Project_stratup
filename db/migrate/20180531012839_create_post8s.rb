class CreatePost8s < ActiveRecord::Migration
  def change
    create_table :post8s do |t|
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
