class CreateQuoteInfos < ActiveRecord::Migration
  def change
    create_table :quote_infos do |t|

      t.timestamps
    end
  end
end
