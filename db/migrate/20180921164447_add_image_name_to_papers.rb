class AddImageNameToPapers < ActiveRecord::Migration[5.2]
  def change
    add_column :papers, :image_name, :string
  end
end
