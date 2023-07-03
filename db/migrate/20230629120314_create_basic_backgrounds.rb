class CreateBasicBackgrounds < ActiveRecord::Migration[7.0]
  def change
    create_table :basic_backgrounds do |t|
      t.string :name
      t.float :years_of_experience
      t.string :email
      t.bigint :phone_number
      t.references :detailable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
