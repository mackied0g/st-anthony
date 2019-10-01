class CreateFounds < ActiveRecord::Migration[5.2]
  def change
    create_table :founds do |t|
      t.integer :location_id
      t.integer :lost_id

      t.timestamps
    end
  end
end
