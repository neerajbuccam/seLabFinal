class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :type
      t.boolean :download

      t.timestamps null: false
    end
  end
end
