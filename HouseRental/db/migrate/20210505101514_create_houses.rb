class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :house_name
      t.string :fee
      t.string :address
      t.string :built_year
      t.string :note
      t.timestamps
    end
  end
end
