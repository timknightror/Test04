class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :add1
      t.string :add2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :type
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
