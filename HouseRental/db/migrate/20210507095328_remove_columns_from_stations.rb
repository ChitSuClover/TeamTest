class RemoveColumnsFromStations < ActiveRecord::Migration[5.2]
  def change
    remove_column :stations, :line_name2
    remove_column :stations, :station_name2
    remove_column :stations, :walking_time2
    remove_column :stations, :line_name3
    remove_column :stations, :station_name3
    remove_column :stations, :walking_time3
  end
end
