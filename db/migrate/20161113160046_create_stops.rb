class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|

      t.string :on_street
      t.string :cross_street
      t.string :routes_list
      t.integer :routes_total
      t.integer :boardings
      t.integer :alightings
      t.date :month_beginning
      t.string  :daytype
      t.string  :location

      t.timestamps null: false
    end
  end
end
