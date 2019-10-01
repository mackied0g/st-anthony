class CreateFounds < ActiveRecord::Migration[5.2]
  def change
    create_table :founds do |t|
      t.integer :lost_item_id
      t.integer :location_id

      t.timestamps
    end
  end
end
