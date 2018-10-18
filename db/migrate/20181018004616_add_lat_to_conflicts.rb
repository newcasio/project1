class AddLatToConflicts < ActiveRecord::Migration[5.2]
  def change
    add_column :conflicts, :lat, :float
  end
end
