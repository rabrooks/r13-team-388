class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :category_id
      t.text :title
      t.datetime :start
      t.datetime :end
      t.boolean :ongoing
      t.text :display_location
      t.text :description
      t.decimal :cost

      t.timestamps
    end
  end
end