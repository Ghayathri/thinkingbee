class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.text :context
      t.integer :descripable_id
      t.string  :descripable_type

      t.timestamps
    end
  end
end
