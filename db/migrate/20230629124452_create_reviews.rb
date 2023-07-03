class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.float :stars
      t.string :comment
      t.references :user, null: false, foreign_key: true
      t.references :feedbackable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
