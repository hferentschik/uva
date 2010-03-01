class AddAssetToDog < ActiveRecord::Migration
  def self.up
    change_table :dogs do |t|
      add_column :dogs, :asset_id, :integer
    end
  end

  def self.down
    remove_column :asset_id
  end
end
