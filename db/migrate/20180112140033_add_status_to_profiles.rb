class AddStatusToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :admin, :boolean, :default => false
  end
end
