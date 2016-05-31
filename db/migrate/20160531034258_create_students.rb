class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.belongs_to :teacher

      t.timestamps null: false
    end
  end
end
