class AddTextToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :text, :string
  end
end
