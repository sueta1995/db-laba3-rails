class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.text :name
      t.json :contact_information

      t.timestamps
    end
  end
end
