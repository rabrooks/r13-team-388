class CreatePugEvents < ActiveRecord::Migration
  def change
    create_table :pug_events do |t|
      t.text :foreign_id
      t.date :date
      t.time :time
      t.text :title
      t.text :location
      t.text :location_city
      t.text :location_state
      t.text :location_zip
      t.text :location_coordinates
      t.text :description

      t.timestamps
    end
  end
end
