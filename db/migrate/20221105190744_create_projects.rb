class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :cipher
      t.text :name
      t.timestamp :deadline
      t.integer :laboriousness
      t.text :notice
      t.integer :customer_id

      t.timestamps
    end
  end
end
