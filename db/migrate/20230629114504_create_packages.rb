class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.text :description
      t.date :dates_of_journey, array: true, default: []
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
