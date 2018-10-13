class CreateContinents < ActiveRecord::Migration[5.2]
  def change
    create_table :continents do |t|
      t.text :name
      t.text :area
      t.text :population
      t.text :image

      t.timestamps
    end
  end
end
