class AddSheetNameToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :sheet_name, :string
  end
end
