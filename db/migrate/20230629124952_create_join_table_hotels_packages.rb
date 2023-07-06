class CreateJoinTableHotelsPackages < ActiveRecord::Migration[7.0]
  def change
    create_join_table :hotels, :packages, id: false do |t|
      # t.index [:hotel_id, :package_id]
      # t.index [:package_id, :hotel_id]
    end
  end
end
