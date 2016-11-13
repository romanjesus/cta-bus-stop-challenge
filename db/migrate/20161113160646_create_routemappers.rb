class CreateRoutemappers < ActiveRecord::Migration
  def change
    create_table :routemappers do |t|

      t.timestamps null: false
    end
  end
end
