class CreateCollaborators < ActiveRecord::Migration[5.1]
  def change
    create_table :collaborators do |t|
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
