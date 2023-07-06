class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :no_of_traveller
      t.references :package, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :guide, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
