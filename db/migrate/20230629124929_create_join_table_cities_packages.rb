class CreateJoinTableCitiesPackages < ActiveRecord::Migration[7.0]
  def change
    create_join_table :cities, :packages, id: false do |t|
      # t.index [:city_id, :package_id]
      # t.index [:package_id, :city_id]
    end
  end
end
