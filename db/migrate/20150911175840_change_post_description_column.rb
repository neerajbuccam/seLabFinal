class ChangePostDescriptionColumn < ActiveRecord::Migration
  def up
    change_column("posts","description",:text,:limit => 300)
  end
end
