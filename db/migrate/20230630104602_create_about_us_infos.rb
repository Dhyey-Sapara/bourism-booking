class CreateAboutUsInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :about_us_infos do |t|
      t.string :company_name
      t.text :description
      t.date :founded_on
      t.string :trusted_by, array: true, default: []

      t.timestamps
    end
  end
end
