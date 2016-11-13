class CreateRoutemappers < ActiveRecord::Migration
  def change
    create_table :routemappers do |t|

      t.integer :stop_id
      t.integer :route_id 

      t.timestamps null: false
    end
  end
end
