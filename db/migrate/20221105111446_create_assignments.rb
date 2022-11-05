class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.integer :laboriousness
      t.timestamp :issue_date
      t.timestamp :planned_expiration_date
      t.timestamp :real_expiration_date
      t.integer :project_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
