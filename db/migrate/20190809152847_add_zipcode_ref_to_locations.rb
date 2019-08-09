class AddZipcodeRefToLocations < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :zipcode, foreign_key: true
  end
end
