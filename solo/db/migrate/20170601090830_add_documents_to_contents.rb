class AddDocumentsToContents < ActiveRecord::Migration[5.1]
  def change
    add_reference :contents, :documents, foreign_key: true
  end
end
