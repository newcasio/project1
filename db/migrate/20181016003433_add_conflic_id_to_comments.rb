class AddConflicIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :conflict_id, :integer
  end
end
