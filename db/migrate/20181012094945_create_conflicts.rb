class CreateConflicts < ActiveRecord::Migration[5.2]
  def change
    create_table :conflicts do |t|
      t.text :name
      t.text :country
      t.text :type
      t.text :description
      t.text :parties
      t.text :image
      t.integer :continent_id

      t.timestamps
    end
  end
end
