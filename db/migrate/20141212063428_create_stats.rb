class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :aname
      t.integer :age
      t.integer :height
      t.integer :weight
      t.text :wellness_goals

      t.timestamps
    end
  end
end
