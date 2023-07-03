class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.integer :role
      t.references :about_us_info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
