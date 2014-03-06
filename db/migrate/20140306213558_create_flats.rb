class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.integer :rooms
      t.string :flatdesc
      t.decimal :latitude, :precision => 10, :scale => 6
      t.decimal :longitude, :precision => 10, :scale => 6

      t.timestamps
    end
  end
end

 # From the Google Maps documentation: "With the current zoom capabilities of Google Maps, you should only need 6 digits of precision after the decimal. To keep the storage space required for your table at a minimum, you can specify that the lat and lng attributes are floats of size (10,6)"