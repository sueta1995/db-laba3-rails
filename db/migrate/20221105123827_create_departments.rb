class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.text :name
      t.integer :ciphers, array: true

      t.timestamps
    end
  end
end
