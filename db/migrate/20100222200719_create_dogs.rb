class CreateDogs < ActiveRecord::Migration
  def self.up
    create_table :dogs do |t|
      t.string :name, :null => false
      t.string :gender, :null => false
      t.date :birthdate, :null => false
      t.string :description, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :dogs
  end
end
