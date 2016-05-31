require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it "should create one Teacher" do
  	Teacher.create!(name: "Teacher 1")

  	expect(Teacher.count).to eq(1)
  end

  it "should display all students progress" do
  	l = Lesson.create!(name: "Lesson 1")
  	c1 = l.contents.create!(name: "Content 1")
  	c2 = l.contents.create!(name: "Content 2")
  	c3 = l.contents.create!(name: "Content 3")
  	c4 = l.contents.create!(name: "Content 4")

  	t = Teacher.create!(name: "Teacher 1")
  	s = t.students.create!(name: "Student 1")

  	CompletedLesson.create!(lesson_id: l.id, content_id: c1.id, student_id: s.id)
  	CompletedLesson.create!(lesson_id: l.id, content_id: c2.id, student_id: s.id)
  	CompletedLesson.create!(lesson_id: l.id, content_id: c3.id, student_id: s.id)
  	CompletedLesson.create!(lesson_id: l.id, content_id: c4.id, student_id: s.id)

  	studentPorgressCard = {"#{s.name}"=>["L#{l.id} P1", "L#{l.id} P2", "L#{l.id} P3", "L#{l.id} P4"]}

  	expect(t.studentsProgress).to eq(studentPorgressCard)
  end
end
