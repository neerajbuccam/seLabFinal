class ChangeTypeColumn < ActiveRecord::Migration
  def change
    rename_column :posts, :type, :category
  end
end
