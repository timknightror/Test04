class CreateEmployments < ActiveRecord::Migration
  def self.up
    create_table :employments, :id => false do |t|
      t.integer :company_id
      t.integer :person_id
      t.date :hired
      t.date :fired

      t.timestamps
    end
  end

  def self.down
    drop_table :employments
  end
end
