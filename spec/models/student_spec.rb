require 'rails_helper'

RSpec.describe Student, type: :model do
  
  let (:s) {s = Student.create!(name: "Student 1")}
  

  it "should create one Student" do
  	Student.create!(name: "Student 1")
  	expect(Student.count).to eq(1)
  end

  it "should check the progress of a student" do
  	l = Lesson.create!(name: "Lesson 1")
  	c1 = l.contents.create!(name: "Content 1")
  	c2 = l.contents.create!(name: "Content 2")
  	c3 = l.contents.create!(name: "Content 3")
  	c4 = l.contents.create!(name: "Content 4")

  	CompletedLesson.create!(lesson_id: l.id, content_id: c1.id, student_id: s.id)
  	CompletedLesson.create!(lesson_id: l.id, content_id: c2.id, student_id: s.id)
  	CompletedLesson.create!(lesson_id: l.id, content_id: c3.id, student_id: s.id)
  	CompletedLesson.create!(lesson_id: l.id, content_id: c4.id, student_id: s.id)

  	comleted_lesson = ["L#{l.id} P1", "L#{l.id} P2", "L#{l.id} P3", "L#{l.id} P4"]

  	expect(s.progress).to eq(comleted_lesson)
  end
end
