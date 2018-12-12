class AddSentenceToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :sentence, :string
  end
end
