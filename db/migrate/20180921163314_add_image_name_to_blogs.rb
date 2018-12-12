class AddImageNameToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :image_name, :string
  end
end
