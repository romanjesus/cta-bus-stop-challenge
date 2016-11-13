class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|

      t.string :route_number
      t.string :name

      t.timestamps null: false
    end
  end
end
