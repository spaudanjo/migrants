class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :immigrant_id
      t.datetime :event_time
      t.string :event_place
      t.text :event_description

      t.timestamps
    end
  end
end
