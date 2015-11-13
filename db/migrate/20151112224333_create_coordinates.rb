class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.string :latitude
      t.string :longitude
      t.string :elevation
      t.string :state
      t.string :bike
      t.timestamps null: false
    end
  end
end
