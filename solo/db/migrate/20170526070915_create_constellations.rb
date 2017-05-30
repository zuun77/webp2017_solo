class CreateConstellations < ActiveRecord::Migration[5.1]
  def change
    create_table :constellations do |t|

      t.timestamps
    end
  end
end
