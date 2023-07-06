class CreateContactInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_infos do |t|
      t.bigint :phone_number
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
