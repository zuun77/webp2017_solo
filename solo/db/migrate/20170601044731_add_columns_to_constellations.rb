class AddColumnsToConstellations < ActiveRecord::Migration[5.1]
  def change
	  add_column :constellations, :start_dt, :date
	  add_column :constellations, :end_dt, :date
	  add_column :constellations, :img, :string
	  add_column :constellations, :title, :string
  end
end
