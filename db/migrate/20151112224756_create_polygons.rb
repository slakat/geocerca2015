class CreatePolygons < ActiveRecord::Migration
  def change
    create_table :polygons do |t|
      t.string :coordinates
      t.timestamps null: false
    end
  end
end
