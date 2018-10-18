class AddLngToConflicts < ActiveRecord::Migration[5.2]
  def change
    add_column :conflicts, :lng, :float
  end
end
