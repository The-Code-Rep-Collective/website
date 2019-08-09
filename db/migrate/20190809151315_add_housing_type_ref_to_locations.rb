class AddHousingTypeRefToLocations < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :housing_type, foreign_key: true
  end
end
