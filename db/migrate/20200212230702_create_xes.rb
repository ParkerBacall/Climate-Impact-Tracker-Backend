class CreateXes < ActiveRecord::Migration[6.0]
  def change
    create_table :xes do |t|
      t.string :data

      t.timestamps
    end
  end
end
