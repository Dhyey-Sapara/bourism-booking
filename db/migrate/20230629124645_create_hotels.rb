class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :star
      t.integer :rooms_available
      t.date :booked_dates, array: true, default: []
      t.string :ammeditites, array: true, default: []
      t.string :email
      t.bigint :phone_number
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
