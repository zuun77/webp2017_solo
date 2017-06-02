class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
	  t.string :title
	  t.string :text
	  t.integer :sequence
      t.timestamps
    end
  end
end
