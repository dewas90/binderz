class AddDocumentToCollaborators < ActiveRecord::Migration[5.1]
  def change
    add_reference :collaborators, :document, foreign_key: true
  end
end
