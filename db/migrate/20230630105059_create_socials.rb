class CreateSocials < ActiveRecord::Migration[7.0]
  def change
    create_table :socials do |t|
      t.string :facebook_link
      t.string :twitter_link
      t.string :linkedin_link
      t.references :linkable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
