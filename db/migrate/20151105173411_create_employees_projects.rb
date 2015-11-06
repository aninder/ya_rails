class CreateEmployeesProjects < ActiveRecord::Migration
  def change
    create_table :employees_projects do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index(:employees_projects, [:employee_id, :project_id])
  end
end
