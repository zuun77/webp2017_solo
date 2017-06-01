class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.text :header
      t.string :title
      t.string :reference

      t.timestamps
    end
  end
end
