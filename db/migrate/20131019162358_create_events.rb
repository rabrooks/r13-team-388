class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :category_id
      t.text :title
      t.datetime :start
      t.datetime :end
      t.boolean :allDay
      t.text :url
      t.text :display_location
      t.text :description
      t.text :className
      t.decimal :cost

      t.timestamps
    end
  end
end