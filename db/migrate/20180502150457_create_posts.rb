class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :category, index: true
      t.belongs_to :user, index: true
      t.integer :karma, null:false, default: 0
      t.timestamps
    end
  end
end