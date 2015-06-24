class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.integer :choice_1
      t.string :choice_1_label
      t.integer :choice_2
      t.string :choice_2_label
      t.text :sit_rep

      t.timestamps null: false
    end
  end
end
