class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.text :full_name
      t.text :function
      t.integer :department_id

      t.timestamps
    end
  end
end
