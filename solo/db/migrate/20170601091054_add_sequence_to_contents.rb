class AddSequenceToContents < ActiveRecord::Migration[5.1]
  def change
	 add_column :contents, :sequence, :integer
  end
end
