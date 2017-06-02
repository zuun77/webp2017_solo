class ChangeStringColumnToText < ActiveRecord::Migration[5.1]
  def change
  	change_column :contents, :text, :text	
  end
end
