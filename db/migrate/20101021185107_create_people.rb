class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :lname
      t.string :fname
      t.date :dob
      t.boolean :client
      t.boolean :compcontact
      t.boolean :tech

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
