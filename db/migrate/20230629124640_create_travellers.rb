class CreateTravellers < ActiveRecord::Migration[7.0]
  def change
    create_table :travellers do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.date :date_of_birth
      t.bigint :phone_number
      t.string :email
      t.text :address
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
