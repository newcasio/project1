class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :conflicts, :type, :conflict_type
  end
end
