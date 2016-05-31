class CreateCompletedLessons < ActiveRecord::Migration
  def change
    create_table :completed_lessons do |t|
      t.belongs_to :student
      t.belongs_to :lesson
      t.integer :content_id
      t.datetime :completion_date


      t.timestamps null: false
    end
  end
end
