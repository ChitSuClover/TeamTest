class AddColumnsToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :line_name2, :string
    add_column :stations, :station_name2, :string
    add_column :stations, :walking_time2, :string
    add_column :stations, :line_name3, :string
    add_column :stations, :station_name3, :string
    add_column :stations, :walking_time3, :string
  end
end
