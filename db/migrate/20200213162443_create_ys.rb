class CreateYs < ActiveRecord::Migration[6.0]
  def change
    create_table :ys do |t|
      t.string :data
      t.references :map, foreign_key: true

      t.timestamps
    end
  end
end
