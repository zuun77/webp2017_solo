class CreateHoroscopes < ActiveRecord::Migration[5.1]
  def change
    create_table :horoscopes do |t|
      t.string :title
      t.date :start_dt
      t.date :end_dt
      t.string :img_url

      t.timestamps
    end
  end
end
