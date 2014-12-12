class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
