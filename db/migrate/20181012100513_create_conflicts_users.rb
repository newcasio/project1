class CreateConflictsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :conflicts_users do |t|
      t.integer :conflict_id
      t.integer :user_id
    end
  end
end
