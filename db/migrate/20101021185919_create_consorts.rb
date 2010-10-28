class CreateConsorts < ActiveRecord::Migration
  def self.up
    create_table :consorts do |t|
      t.string :name
      t.boolean :active
      t.integer :company_id
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :consorts
  end
end
