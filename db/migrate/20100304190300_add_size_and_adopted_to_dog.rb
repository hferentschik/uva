class AddSizeAndAdoptedToDog < ActiveRecord::Migration
  def self.up
    change_table :dogs do |t|
      add_column :dogs, :size, :string
      add_column :dogs, :adopted, :boolean, { :default => false }
    end
  end

  def self.down
    remove_column :dogs, :adopted
    remove_column :dogs, :size
  end
end
