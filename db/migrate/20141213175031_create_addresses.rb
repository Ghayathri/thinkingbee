class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :country
      t.integer :addressable_id
      t.integer :addressable_type

      t.timestamps
    end
  end
end
