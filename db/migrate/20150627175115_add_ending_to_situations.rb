class AddEndingToSituations < ActiveRecord::Migration
  def change
    add_column :situations, :ending, :boolean
  end
end
