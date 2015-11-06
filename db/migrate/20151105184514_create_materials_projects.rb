class CreateMaterialsProjects < ActiveRecord::Migration
  def change
    create_table :materials_projects do |t|
      t.references :material, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.string :amount

      t.timestamps null: false
    end
  end
end
