class AddPasswordToPapers < ActiveRecord::Migration[5.2]
  def change
    add_column :papers, :password, :string
  end
end
