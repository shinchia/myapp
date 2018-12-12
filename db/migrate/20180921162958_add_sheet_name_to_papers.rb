class AddSheetNameToPapers < ActiveRecord::Migration[5.2]
  def change
    add_column :papers, :sheet_name, :string
  end
end
